
#ifndef CHPL_DYNO_H_
#define CHPL_DYNO_H_

#ifndef CHPL_DO_EXTERN_C
extern "C" {
#endif

#define CHPL_DYNO_PREFIX chpl_dyno_
#define CHPL_DYNO_API(name) chpl_dyno_##name

typedef void* CHPL_DYNO_API(Context);
CHPL_DYNO_API(Context) CHPL_DYNO_API(ContextCreate)();
void CHPL_DYNO_API(ContextDestroy)(CHPL_DYNO_API(Context) context);

typedef void* CHPL_DYNO_API(AstNode);
typedef void* CHPL_DYNO_API(AstNodeList);
void CHPL_DYNO_API(AstNodeListDestroy)(CHPL_DYNO_API(AstNodeList) list);


#define DEFINE_AST(NAME) typedef void* CHPL_DYNO_API(NAME);
#define AST_NODE(NAME) DEFINE_AST(NAME)
#define AST_LEAF(NAME) DEFINE_AST(NAME)
#define AST_BEGIN_SUBCLASSES(NAME)
#define AST_END_SUBCLASSES(NAME)
#include "chpl/uast/uast-classes-list-adapter.h"
#undef DEFINE_AST

#define IS_AST(NAME) int CHPL_DYNO_API(is##NAME)(CHPL_DYNO_API(NAME) node);
#define AST_NODE(NAME) IS_AST(NAME)
#define AST_LEAF(NAME) IS_AST(NAME)
#define AST_BEGIN_SUBCLASSES(NAME)
#define AST_END_SUBCLASSES(NAME)
#include "chpl/uast/uast-classes-list-adapter.h"
#undef IS_AST


#define TO_AST(NAME) CHPL_DYNO_API(NAME) CHPL_DYNO_API(to##NAME)(CHPL_DYNO_API(AstNode) node);
#define AST_NODE(NAME) TO_AST(NAME)
#define AST_LEAF(NAME) TO_AST(NAME)
#define AST_BEGIN_SUBCLASSES(NAME)
#define AST_END_SUBCLASSES(NAME)
#include "chpl/uast/uast-classes-list-adapter.h"
#undef TO_AST

// parse
CHPL_DYNO_API(AstNodeList) CHPL_DYNO_API(Context_parse)(CHPL_DYNO_API(Context) context, const char* file);


// ast node
const char* CHPL_DYNO_API(AstNode_id)(CHPL_DYNO_API(AstNode) node);
const char* CHPL_DYNO_API(AstNode_tag)(CHPL_DYNO_API(AstNode) node);
int CHPL_DYNO_API(AstNode_numChildren)(CHPL_DYNO_API(AstNode) node);
CHPL_DYNO_API(AstNode) CHPL_DYNO_API(AstNode_child)(CHPL_DYNO_API(AstNode) node, int i);

// lists
int CHPL_DYNO_API(AstNodeList_size)(CHPL_DYNO_API(AstNodeList) list);
CHPL_DYNO_API(AstNode) CHPL_DYNO_API(AstNodeList_get)(CHPL_DYNO_API(AstNodeList) list, int i);

// comments
const char* CHPL_DYNO_API(Comment_text)(CHPL_DYNO_API(Comment) comment);

#ifndef CHPL_DO_EXTERN_C
}
#endif

#endif
