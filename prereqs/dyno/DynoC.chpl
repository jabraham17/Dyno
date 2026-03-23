// Generated with c2chapel version 0.1.0

// Header given to c2chapel:
require "dyno.h";

// Note: Generated with fake std headers

use CTypes;
extern proc dynoc_ContextCreate() : dynoc_Context;

extern proc dynoc_ContextDestroy(context : dynoc_Context) : void;

extern proc dynoc_AstNodeListDestroy(list : dynoc_AstNodeList) : void;

extern proc dynoc_isAnonFormal(node : dynoc_AnonFormal) : c_int;

extern proc dynoc_isAs(node : dynoc_As) : c_int;

extern proc dynoc_isArray(node : dynoc_Array) : c_int;

extern proc dynoc_isArrayRow(node : dynoc_ArrayRow) : c_int;

extern proc dynoc_isAttribute(node : dynoc_Attribute) : c_int;

extern proc dynoc_isAttributeGroup(node : dynoc_AttributeGroup) : c_int;

extern proc dynoc_isBreak(node : dynoc_Break) : c_int;

extern proc dynoc_isCatch(node : dynoc_Catch) : c_int;

extern proc dynoc_isCobegin(node : dynoc_Cobegin) : c_int;

extern proc dynoc_isConditional(node : dynoc_Conditional) : c_int;

extern proc dynoc_isComment(node : dynoc_Comment) : c_int;

extern proc dynoc_isContinue(node : dynoc_Continue) : c_int;

extern proc dynoc_isDelete(node : dynoc_Delete) : c_int;

extern proc dynoc_isDomain(node : dynoc_Domain) : c_int;

extern proc dynoc_isDot(node : dynoc_Dot) : c_int;

extern proc dynoc_isEmptyStmt(node : dynoc_EmptyStmt) : c_int;

extern proc dynoc_isErroneousExpression(node : dynoc_ErroneousExpression) : c_int;

extern proc dynoc_isExternBlock(node : dynoc_ExternBlock) : c_int;

extern proc dynoc_isFunctionSignature(node : dynoc_FunctionSignature) : c_int;

extern proc dynoc_isIdentifier(node : dynoc_Identifier) : c_int;

extern proc dynoc_isImplements(node : dynoc_Implements) : c_int;

extern proc dynoc_isImport(node : dynoc_Import) : c_int;

extern proc dynoc_isInclude(node : dynoc_Include) : c_int;

extern proc dynoc_isInit(node : dynoc_Init) : c_int;

extern proc dynoc_isLabel(node : dynoc_Label) : c_int;

extern proc dynoc_isLet(node : dynoc_Let) : c_int;

extern proc dynoc_isNew(node : dynoc_New) : c_int;

extern proc dynoc_isRange(node : dynoc_Range) : c_int;

extern proc dynoc_isRequire(node : dynoc_Require) : c_int;

extern proc dynoc_isReturn(node : dynoc_Return) : c_int;

extern proc dynoc_isSelect(node : dynoc_Select) : c_int;

extern proc dynoc_isThrow(node : dynoc_Throw) : c_int;

extern proc dynoc_isTry(node : dynoc_Try) : c_int;

extern proc dynoc_isUse(node : dynoc_Use) : c_int;

extern proc dynoc_isVisibilityClause(node : dynoc_VisibilityClause) : c_int;

extern proc dynoc_isWhen(node : dynoc_When) : c_int;

extern proc dynoc_isWithClause(node : dynoc_WithClause) : c_int;

extern proc dynoc_isYield(node : dynoc_Yield) : c_int;

extern proc dynoc_isBegin(node : dynoc_Begin) : c_int;

extern proc dynoc_isBlock(node : dynoc_Block) : c_int;

extern proc dynoc_isDefer(node : dynoc_Defer) : c_int;

extern proc dynoc_isLocal(node : dynoc_Local) : c_int;

extern proc dynoc_isManage(node : dynoc_Manage) : c_int;

extern proc dynoc_isOn(node : dynoc_On) : c_int;

extern proc dynoc_isSerial(node : dynoc_Serial) : c_int;

extern proc dynoc_isSync(node : dynoc_Sync) : c_int;

extern proc dynoc_isDoWhile(node : dynoc_DoWhile) : c_int;

extern proc dynoc_isWhile(node : dynoc_While) : c_int;

extern proc dynoc_isBracketLoop(node : dynoc_BracketLoop) : c_int;

extern proc dynoc_isCoforall(node : dynoc_Coforall) : c_int;

extern proc dynoc_isFor(node : dynoc_For) : c_int;

extern proc dynoc_isForall(node : dynoc_Forall) : c_int;

extern proc dynoc_isForeach(node : dynoc_Foreach) : c_int;

extern proc dynoc_isBoolLiteral(node : dynoc_BoolLiteral) : c_int;

extern proc dynoc_isImagLiteral(node : dynoc_ImagLiteral) : c_int;

extern proc dynoc_isIntLiteral(node : dynoc_IntLiteral) : c_int;

extern proc dynoc_isRealLiteral(node : dynoc_RealLiteral) : c_int;

extern proc dynoc_isUintLiteral(node : dynoc_UintLiteral) : c_int;

extern proc dynoc_isBytesLiteral(node : dynoc_BytesLiteral) : c_int;

extern proc dynoc_isStringLiteral(node : dynoc_StringLiteral) : c_int;

extern proc dynoc_isFnCall(node : dynoc_FnCall) : c_int;

extern proc dynoc_isOpCall(node : dynoc_OpCall) : c_int;

extern proc dynoc_isPrimCall(node : dynoc_PrimCall) : c_int;

extern proc dynoc_isReduce(node : dynoc_Reduce) : c_int;

extern proc dynoc_isScan(node : dynoc_Scan) : c_int;

extern proc dynoc_isTuple(node : dynoc_Tuple) : c_int;

extern proc dynoc_isZip(node : dynoc_Zip) : c_int;

extern proc dynoc_isMultiDecl(node : dynoc_MultiDecl) : c_int;

extern proc dynoc_isTupleDecl(node : dynoc_TupleDecl) : c_int;

extern proc dynoc_isForwardingDecl(node : dynoc_ForwardingDecl) : c_int;

extern proc dynoc_isEnumElement(node : dynoc_EnumElement) : c_int;

extern proc dynoc_isFunction(node : dynoc_Function) : c_int;

extern proc dynoc_isInterface(node : dynoc_Interface) : c_int;

extern proc dynoc_isModule(node : dynoc_Module) : c_int;

extern proc dynoc_isTypeQuery(node : dynoc_TypeQuery) : c_int;

extern proc dynoc_isReduceIntent(node : dynoc_ReduceIntent) : c_int;

extern proc dynoc_isFormal(node : dynoc_Formal) : c_int;

extern proc dynoc_isTaskVar(node : dynoc_TaskVar) : c_int;

extern proc dynoc_isVarArgFormal(node : dynoc_VarArgFormal) : c_int;

extern proc dynoc_isVariable(node : dynoc_Variable) : c_int;

extern proc dynoc_isEnum(node : dynoc_Enum) : c_int;

extern proc dynoc_isClass(node : dynoc_Class) : c_int;

extern proc dynoc_isRecord(node : dynoc_Record) : c_int;

extern proc dynoc_isUnion(node : dynoc_Union) : c_int;

extern proc dynoc_toAnonFormal(node : dynoc_AstNode) : dynoc_AnonFormal;

extern proc dynoc_toAs(node : dynoc_AstNode) : dynoc_As;

extern proc dynoc_toArray(node : dynoc_AstNode) : dynoc_Array;

extern proc dynoc_toArrayRow(node : dynoc_AstNode) : dynoc_ArrayRow;

extern proc dynoc_toAttribute(node : dynoc_AstNode) : dynoc_Attribute;

extern proc dynoc_toAttributeGroup(node : dynoc_AstNode) : dynoc_AttributeGroup;

extern proc dynoc_toBreak(node : dynoc_AstNode) : dynoc_Break;

extern proc dynoc_toCatch(node : dynoc_AstNode) : dynoc_Catch;

extern proc dynoc_toCobegin(node : dynoc_AstNode) : dynoc_Cobegin;

extern proc dynoc_toConditional(node : dynoc_AstNode) : dynoc_Conditional;

extern proc dynoc_toComment(node : dynoc_AstNode) : dynoc_Comment;

extern proc dynoc_toContinue(node : dynoc_AstNode) : dynoc_Continue;

extern proc dynoc_toDelete(node : dynoc_AstNode) : dynoc_Delete;

extern proc dynoc_toDomain(node : dynoc_AstNode) : dynoc_Domain;

extern proc dynoc_toDot(node : dynoc_AstNode) : dynoc_Dot;

extern proc dynoc_toEmptyStmt(node : dynoc_AstNode) : dynoc_EmptyStmt;

extern proc dynoc_toErroneousExpression(node : dynoc_AstNode) : dynoc_ErroneousExpression;

extern proc dynoc_toExternBlock(node : dynoc_AstNode) : dynoc_ExternBlock;

extern proc dynoc_toFunctionSignature(node : dynoc_AstNode) : dynoc_FunctionSignature;

extern proc dynoc_toIdentifier(node : dynoc_AstNode) : dynoc_Identifier;

extern proc dynoc_toImplements(node : dynoc_AstNode) : dynoc_Implements;

extern proc dynoc_toImport(node : dynoc_AstNode) : dynoc_Import;

extern proc dynoc_toInclude(node : dynoc_AstNode) : dynoc_Include;

extern proc dynoc_toInit(node : dynoc_AstNode) : dynoc_Init;

extern proc dynoc_toLabel(node : dynoc_AstNode) : dynoc_Label;

extern proc dynoc_toLet(node : dynoc_AstNode) : dynoc_Let;

extern proc dynoc_toNew(node : dynoc_AstNode) : dynoc_New;

extern proc dynoc_toRange(node : dynoc_AstNode) : dynoc_Range;

extern proc dynoc_toRequire(node : dynoc_AstNode) : dynoc_Require;

extern proc dynoc_toReturn(node : dynoc_AstNode) : dynoc_Return;

extern proc dynoc_toSelect(node : dynoc_AstNode) : dynoc_Select;

extern proc dynoc_toThrow(node : dynoc_AstNode) : dynoc_Throw;

extern proc dynoc_toTry(node : dynoc_AstNode) : dynoc_Try;

extern proc dynoc_toUse(node : dynoc_AstNode) : dynoc_Use;

extern proc dynoc_toVisibilityClause(node : dynoc_AstNode) : dynoc_VisibilityClause;

extern proc dynoc_toWhen(node : dynoc_AstNode) : dynoc_When;

extern proc dynoc_toWithClause(node : dynoc_AstNode) : dynoc_WithClause;

extern proc dynoc_toYield(node : dynoc_AstNode) : dynoc_Yield;

extern proc dynoc_toBegin(node : dynoc_AstNode) : dynoc_Begin;

extern proc dynoc_toBlock(node : dynoc_AstNode) : dynoc_Block;

extern proc dynoc_toDefer(node : dynoc_AstNode) : dynoc_Defer;

extern proc dynoc_toLocal(node : dynoc_AstNode) : dynoc_Local;

extern proc dynoc_toManage(node : dynoc_AstNode) : dynoc_Manage;

extern proc dynoc_toOn(node : dynoc_AstNode) : dynoc_On;

extern proc dynoc_toSerial(node : dynoc_AstNode) : dynoc_Serial;

extern proc dynoc_toSync(node : dynoc_AstNode) : dynoc_Sync;

extern proc dynoc_toDoWhile(node : dynoc_AstNode) : dynoc_DoWhile;

extern proc dynoc_toWhile(node : dynoc_AstNode) : dynoc_While;

extern proc dynoc_toBracketLoop(node : dynoc_AstNode) : dynoc_BracketLoop;

extern proc dynoc_toCoforall(node : dynoc_AstNode) : dynoc_Coforall;

extern proc dynoc_toFor(node : dynoc_AstNode) : dynoc_For;

extern proc dynoc_toForall(node : dynoc_AstNode) : dynoc_Forall;

extern proc dynoc_toForeach(node : dynoc_AstNode) : dynoc_Foreach;

extern proc dynoc_toBoolLiteral(node : dynoc_AstNode) : dynoc_BoolLiteral;

extern proc dynoc_toImagLiteral(node : dynoc_AstNode) : dynoc_ImagLiteral;

extern proc dynoc_toIntLiteral(node : dynoc_AstNode) : dynoc_IntLiteral;

extern proc dynoc_toRealLiteral(node : dynoc_AstNode) : dynoc_RealLiteral;

extern proc dynoc_toUintLiteral(node : dynoc_AstNode) : dynoc_UintLiteral;

extern proc dynoc_toBytesLiteral(node : dynoc_AstNode) : dynoc_BytesLiteral;

extern proc dynoc_toStringLiteral(node : dynoc_AstNode) : dynoc_StringLiteral;

extern proc dynoc_toFnCall(node : dynoc_AstNode) : dynoc_FnCall;

extern proc dynoc_toOpCall(node : dynoc_AstNode) : dynoc_OpCall;

extern proc dynoc_toPrimCall(node : dynoc_AstNode) : dynoc_PrimCall;

extern proc dynoc_toReduce(node : dynoc_AstNode) : dynoc_Reduce;

extern proc dynoc_toScan(node : dynoc_AstNode) : dynoc_Scan;

extern proc dynoc_toTuple(node : dynoc_AstNode) : dynoc_Tuple;

extern proc dynoc_toZip(node : dynoc_AstNode) : dynoc_Zip;

extern proc dynoc_toMultiDecl(node : dynoc_AstNode) : dynoc_MultiDecl;

extern proc dynoc_toTupleDecl(node : dynoc_AstNode) : dynoc_TupleDecl;

extern proc dynoc_toForwardingDecl(node : dynoc_AstNode) : dynoc_ForwardingDecl;

extern proc dynoc_toEnumElement(node : dynoc_AstNode) : dynoc_EnumElement;

extern proc dynoc_toFunction(node : dynoc_AstNode) : dynoc_Function;

extern proc dynoc_toInterface(node : dynoc_AstNode) : dynoc_Interface;

extern proc dynoc_toModule(node : dynoc_AstNode) : dynoc_Module;

extern proc dynoc_toTypeQuery(node : dynoc_AstNode) : dynoc_TypeQuery;

extern proc dynoc_toReduceIntent(node : dynoc_AstNode) : dynoc_ReduceIntent;

extern proc dynoc_toFormal(node : dynoc_AstNode) : dynoc_Formal;

extern proc dynoc_toTaskVar(node : dynoc_AstNode) : dynoc_TaskVar;

extern proc dynoc_toVarArgFormal(node : dynoc_AstNode) : dynoc_VarArgFormal;

extern proc dynoc_toVariable(node : dynoc_AstNode) : dynoc_Variable;

extern proc dynoc_toEnum(node : dynoc_AstNode) : dynoc_Enum;

extern proc dynoc_toClass(node : dynoc_AstNode) : dynoc_Class;

extern proc dynoc_toRecord(node : dynoc_AstNode) : dynoc_Record;

extern proc dynoc_toUnion(node : dynoc_AstNode) : dynoc_Union;

extern proc dynoc_Context_parse(context : dynoc_Context, file : c_ptrConst(c_char)) : dynoc_AstNodeList;

extern proc dynoc_AstNode_id(node : dynoc_AstNode) : c_ptrConst(c_char);

extern proc dynoc_AstNode_tag(node : dynoc_AstNode) : c_ptrConst(c_char);

extern proc dynoc_AstNode_numChildren(node : dynoc_AstNode) : c_int;

extern proc dynoc_AstNode_child(node : dynoc_AstNode, i : c_int) : dynoc_AstNode;

extern proc dynoc_AstNodeList_size(list : dynoc_AstNodeList) : c_int;

extern proc dynoc_AstNodeList_get(list : dynoc_AstNodeList, i : c_int) : dynoc_AstNode;

extern proc dynoc_Comment_text(comment : dynoc_Comment) : c_ptrConst(c_char);

// ==== c2chapel typedefs ====

extern type dynoc_AnonFormal = c_ptr(void);

extern type dynoc_Array = c_ptr(void);

extern type dynoc_ArrayRow = c_ptr(void);

extern type dynoc_As = c_ptr(void);

extern type dynoc_AstNode = c_ptr(void);

extern type dynoc_AstNodeList = c_ptr(void);

extern type dynoc_Attribute = c_ptr(void);

extern type dynoc_AttributeGroup = c_ptr(void);

extern type dynoc_Begin = c_ptr(void);

extern type dynoc_Block = c_ptr(void);

extern type dynoc_BoolLiteral = c_ptr(void);

extern type dynoc_BracketLoop = c_ptr(void);

extern type dynoc_Break = c_ptr(void);

extern type dynoc_BytesLiteral = c_ptr(void);

extern type dynoc_Catch = c_ptr(void);

extern type dynoc_Class = c_ptr(void);

extern type dynoc_Cobegin = c_ptr(void);

extern type dynoc_Coforall = c_ptr(void);

extern type dynoc_Comment = c_ptr(void);

extern type dynoc_Conditional = c_ptr(void);

extern type dynoc_Context = c_ptr(void);

extern type dynoc_Continue = c_ptr(void);

extern type dynoc_Defer = c_ptr(void);

extern type dynoc_Delete = c_ptr(void);

extern type dynoc_DoWhile = c_ptr(void);

extern type dynoc_Domain = c_ptr(void);

extern type dynoc_Dot = c_ptr(void);

extern type dynoc_EmptyStmt = c_ptr(void);

extern type dynoc_Enum = c_ptr(void);

extern type dynoc_EnumElement = c_ptr(void);

extern type dynoc_ErroneousExpression = c_ptr(void);

extern type dynoc_ExternBlock = c_ptr(void);

extern type dynoc_FnCall = c_ptr(void);

extern type dynoc_For = c_ptr(void);

extern type dynoc_Forall = c_ptr(void);

extern type dynoc_Foreach = c_ptr(void);

extern type dynoc_Formal = c_ptr(void);

extern type dynoc_ForwardingDecl = c_ptr(void);

extern type dynoc_Function = c_ptr(void);

extern type dynoc_FunctionSignature = c_ptr(void);

extern type dynoc_Identifier = c_ptr(void);

extern type dynoc_ImagLiteral = c_ptr(void);

extern type dynoc_Implements = c_ptr(void);

extern type dynoc_Import = c_ptr(void);

extern type dynoc_Include = c_ptr(void);

extern type dynoc_Init = c_ptr(void);

extern type dynoc_IntLiteral = c_ptr(void);

extern type dynoc_Interface = c_ptr(void);

extern type dynoc_Label = c_ptr(void);

extern type dynoc_Let = c_ptr(void);

extern type dynoc_Local = c_ptr(void);

extern type dynoc_Manage = c_ptr(void);

extern type dynoc_Module = c_ptr(void);

extern type dynoc_MultiDecl = c_ptr(void);

extern type dynoc_New = c_ptr(void);

extern type dynoc_On = c_ptr(void);

extern type dynoc_OpCall = c_ptr(void);

extern type dynoc_PrimCall = c_ptr(void);

extern type dynoc_Range = c_ptr(void);

extern type dynoc_RealLiteral = c_ptr(void);

extern type dynoc_Record = c_ptr(void);

extern type dynoc_Reduce = c_ptr(void);

extern type dynoc_ReduceIntent = c_ptr(void);

extern type dynoc_Require = c_ptr(void);

extern type dynoc_Return = c_ptr(void);

extern type dynoc_Scan = c_ptr(void);

extern type dynoc_Select = c_ptr(void);

extern type dynoc_Serial = c_ptr(void);

extern type dynoc_StringLiteral = c_ptr(void);

extern type dynoc_Sync = c_ptr(void);

extern type dynoc_TaskVar = c_ptr(void);

extern type dynoc_Throw = c_ptr(void);

extern type dynoc_Try = c_ptr(void);

extern type dynoc_Tuple = c_ptr(void);

extern type dynoc_TupleDecl = c_ptr(void);

extern type dynoc_TypeQuery = c_ptr(void);

extern type dynoc_UintLiteral = c_ptr(void);

extern type dynoc_Union = c_ptr(void);

extern type dynoc_Use = c_ptr(void);

extern type dynoc_VarArgFormal = c_ptr(void);

extern type dynoc_Variable = c_ptr(void);

extern type dynoc_VisibilityClause = c_ptr(void);

extern type dynoc_When = c_ptr(void);

extern type dynoc_While = c_ptr(void);

extern type dynoc_WithClause = c_ptr(void);

extern type dynoc_Yield = c_ptr(void);

extern type dynoc_Zip = c_ptr(void);

