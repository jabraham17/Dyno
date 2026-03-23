#include "dyno.h"
#include "chpl/parsing/parsing-queries.h"
#include "chpl/framework/Context.h"
#include "chpl/framework/UniqueString.h"
#include "chpl/framework/stringify-functions.h"
#include "chpl/uast/AstNode.h"
#include "chpl/uast/Comment.h"

extern "C" {

CHPL_DYNO_API(Context) CHPL_DYNO_API(ContextCreate)() {
  auto ctx = new chpl::Context();
  return(void*)ctx;
}
void CHPL_DYNO_API(ContextDestroy)(CHPL_DYNO_API(Context) context) {
  auto ctx = (chpl::Context*)context;
  delete ctx;
}

void CHPL_DYNO_API(AstNodeListDestroy)(CHPL_DYNO_API(AstNodeList) list) {
  auto astNodeList = (std::vector<const chpl::uast::AstNode*>*)list;
  delete astNodeList;
}


#define IS_AST(NAME) int CHPL_DYNO_API(is##NAME)(CHPL_DYNO_API(NAME) node) { \
  auto astNode = (chpl::uast::AstNode*)node; \
  return astNode->is##NAME(); \
}
#define AST_NODE(NAME) IS_AST(NAME)
#define AST_LEAF(NAME) IS_AST(NAME)
#define AST_BEGIN_SUBCLASSES(NAME)
#define AST_END_SUBCLASSES(NAME)
#include "chpl/uast/uast-classes-list-adapter.h"
#undef IS_AST


#define TO_AST(NAME) CHPL_DYNO_API(NAME) CHPL_DYNO_API(to##NAME)(CHPL_DYNO_API(AstNode) node) { \
  auto astNode = (chpl::uast::AstNode*)node; \
  auto result = astNode->to##NAME(); \
  return (void*)result; \
}
#define AST_NODE(NAME) TO_AST(NAME)
#define AST_LEAF(NAME) TO_AST(NAME)
#define AST_BEGIN_SUBCLASSES(NAME)
#define AST_END_SUBCLASSES(NAME)
#include "chpl/uast/uast-classes-list-adapter.h"
#undef TO_AST

CHPL_DYNO_API(AstNodeList) CHPL_DYNO_API(Context_parse)(CHPL_DYNO_API(Context) context, const char* file) {
  auto ctx = (chpl::Context*)context;
  auto& builderResult = chpl::parsing::parseFileToBuilderResultAndCheck(
    ctx, chpl::UniqueString::get(ctx, std::string(file)), {});

  auto astNodes = new std::vector<const chpl::uast::AstNode*>();
  astNodes->reserve(builderResult.numTopLevelExpressions());
  for (auto i = 0; i < builderResult.numTopLevelExpressions(); i++) {
    astNodes->push_back(builderResult.topLevelExpression(i));
  }
  return (void*)astNodes;
}

const char* CHPL_DYNO_API(AstNode_id)(CHPL_DYNO_API(AstNode) node) {
  auto astNode = (chpl::uast::AstNode*)node;
  std::stringstream ss;
  astNode->id().stringify(ss, chpl::CHPL_SYNTAX);
  return strdup(ss.str().c_str());
}
const char* CHPL_DYNO_API(AstNode_tag)(CHPL_DYNO_API(AstNode) node) {
  auto astNode = (chpl::uast::AstNode*)node;
  return chpl::uast::asttags::tagToString(astNode->tag());
}
int CHPL_DYNO_API(AstNode_numChildren)(CHPL_DYNO_API(AstNode) node) {
  auto astNode = (chpl::uast::AstNode*)node;
  return astNode->numChildren();
}
CHPL_DYNO_API(AstNode) CHPL_DYNO_API(AstNode_child)(CHPL_DYNO_API(AstNode) node, int i) {
  auto astNode = (chpl::uast::AstNode*)node;
  auto child = astNode->child(i);
  return (void*)child;
}


int CHPL_DYNO_API(AstNodeList_size)(CHPL_DYNO_API(AstNodeList) list) {
  auto astNodeList = (std::vector<const chpl::uast::AstNode*>*)list;
  return astNodeList->size();
}
CHPL_DYNO_API(AstNode) CHPL_DYNO_API(AstNodeList_get)(CHPL_DYNO_API(AstNodeList) list, int i) {
  auto astNodeList = (std::vector<const chpl::uast::AstNode*>*)list;
  auto astNode = (*astNodeList)[i];
  return (void*)astNode;
}

const char* CHPL_DYNO_API(Comment_text)(CHPL_DYNO_API(Comment) comment) {
  auto commentNode = (chpl::uast::Comment*)comment;
  return commentNode->c_str();
}

}

