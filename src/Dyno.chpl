module Dyno {
  use DynoC;
  use CTypes;
  class Context {
    var handle: chpl_dyno_Context;
    proc init() {
      handle = chpl_dyno_ContextCreate();
    }
    proc deinit() {
      chpl_dyno_ContextDestroy(handle);
    }

    proc parse(filename: string): owned AstNodeList {
      var list = chpl_dyno_Context_parse(handle, filename.c_str());
      return new AstNodeList(list);
    }
  }
  class AstNodeList {
    var handle: chpl_dyno_AstNodeList;
    proc deinit() {
      chpl_dyno_AstNodeListDestroy(handle);
    }
    iter these(): AstNode {
      for i in 0..<this.size {
        yield new AstNode(chpl_dyno_AstNodeList_get(handle, i.safeCast(c_int)));
      }
    }
    proc size: int {
      return chpl_dyno_AstNodeList_size(handle);
    }
    proc this(idx: int): AstNode {
      return new AstNode(
        chpl_dyno_AstNodeList_get(handle, idx.safeCast(c_int)));
    }
  }
  @chplcheck.ignore("CamelCaseRecords")
  record AstNode {
    var handle: chpl_dyno_AstNode;
    proc id(): string {
      return try! string.createCopyingBuffer(chpl_dyno_AstNode_id(handle));
    }
    proc tag(): string {
      return try! string.createCopyingBuffer(chpl_dyno_AstNode_tag(handle));
    }
    iter children(): AstNode {
      for i in 0..<chpl_dyno_AstNode_numChildren(handle):int {
        yield new AstNode(chpl_dyno_AstNode_child(handle, i.safeCast(c_int)));
      }
    }
    proc is(param name: string): bool {
      proc cname() param do return "chpl_dyno_is" + name;
      extern cname() proc chplDynoIs(node: chpl_dyno_AstNode): c_int;
      return chplDynoIs(handle) != 0;
    }
    proc to(param name: string) {
      if name == "Comment" {
        proc cname() param do return "chpl_dyno_is" + name;
        extern cname() proc chplDynoIs(node: chpl_dyno_AstNode): c_int;
        if chplDynoIs(handle) == 0 {
          halt("AstNode of tag " + this.tag() +
               " cannot be converted to " + name);
        }
        return new Comment(this);
      } else {
        compilerError("Cannot convert AstNode of tag " +
                      this.tag() + " to " + name);
      }
    }
  }
  @chplcheck.ignore("CamelCaseRecords")
  record Comment {
    forwarding var node: AstNode;
    proc text(): string {
      return try! string.createCopyingBuffer(
        chpl_dyno_Comment_text(chpl_dyno_toComment(node.handle)));
    }
  }

  iter preorder(root): AstNode {
    if isSubtype(root.type, AstNodeList) {
      for node in root {
        for n in preorder(node) {
          yield n;
        }
      }
    } else {
      yield root;
      for node in root.children() {
        for n in preorder(node) {
          yield n;
        }
      }
    }
  }
}
