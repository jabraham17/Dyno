use UnitTest, List, FileSystem, IO;
use Dyno;

const code = """
module MyMod {
  /* doc string for myRec */
  record myRec {
    /* doc string for myRec */
    var x: int;
    /* doc string for foo */
    proc getX() {
      return x;
    }
  }
  proc main() {
    var r = new myRec(42);
    writeln(r.getX());
  }
}
""".dedent().strip(trailing=false);

config const testTempDir = "/tmp/_dyno_test";

@chplcheck.ignore("UnusedFormal")
proc createTempDir(test: borrowed Test) throws {
  if FileSystem.exists(testTempDir) {
    FileSystem.rmTree(testTempDir);
  }
  FileSystem.mkdir(testTempDir);
}

proc testParse(test: borrowed Test) throws {
  test.dependsOn(createTempDir);
  const testFile = testTempDir + "/basicParse.chpl";
  var writer = openWriter(testFile);
  writer.write(code);
  writer.close();

  var ctx = new Context();
  var asts = ctx.parse(testFile);
  test.assertEqual(asts.size, 1);

  var topLevel = asts[0];
  test.assertEqual(topLevel.tag(), "Module");
  var children = topLevel.children();
  test.assertEqual(children.size, 3);
  test.assertEqual(children[0].tag(), "Comment");
  test.assertEqual(children[1].tag(), "Record");
  test.assertEqual(children[2].tag(), "Function");

  var rec = children[1];
  var recChildren = rec.children();
  test.assertEqual(recChildren.size, 4);
  test.assertEqual(recChildren[0].tag(), "Comment");
  test.assertEqual(recChildren[1].tag(), "Variable");
  test.assertEqual(recChildren[2].tag(), "Comment");
  test.assertEqual(recChildren[3].tag(), "Function");
}


proc testFindComments(test: borrowed Test) throws {
  test.dependsOn(createTempDir);
  const testFile = testTempDir + "/basicFindComments.chpl";
  var writer = openWriter(testFile);
  writer.write(code);
  writer.close();

  var ctx = new Context();
  var result = new list(string);
  var asts = ctx.parse(testFile);
  for n in preorder(asts) {
    if n.is(Comment) {
      result.pushBack(n.to(Comment).text());
    }
  }
  test.assertEqual(result.size, 3);
  test.assertEqual(result[0], "/* doc string for myRec */");
  test.assertEqual(result[1], "/* doc string for myRec */");
  test.assertEqual(result[2], "/* doc string for foo */");
}

UnitTest.main();
