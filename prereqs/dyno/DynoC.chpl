// Generated with c2chapel version 0.1.0

// Header given to c2chapel:
require "dyno.h";

use CTypes;
extern proc chpl_dyno_ContextCreate() : chpl_dyno_Context;

extern proc chpl_dyno_ContextDestroy(context : chpl_dyno_Context) : void;

extern proc chpl_dyno_AstNodeListDestroy(list : chpl_dyno_AstNodeList) : void;

extern proc chpl_dyno_isAnonFormal(node : chpl_dyno_AnonFormal) : c_int;

extern proc chpl_dyno_isAs(node : chpl_dyno_As) : c_int;

extern proc chpl_dyno_isArray(node : chpl_dyno_Array) : c_int;

extern proc chpl_dyno_isArrayRow(node : chpl_dyno_ArrayRow) : c_int;

extern proc chpl_dyno_isAttribute(node : chpl_dyno_Attribute) : c_int;

extern proc chpl_dyno_isAttributeGroup(node : chpl_dyno_AttributeGroup) : c_int;

extern proc chpl_dyno_isBreak(node : chpl_dyno_Break) : c_int;

extern proc chpl_dyno_isCatch(node : chpl_dyno_Catch) : c_int;

extern proc chpl_dyno_isCobegin(node : chpl_dyno_Cobegin) : c_int;

extern proc chpl_dyno_isConditional(node : chpl_dyno_Conditional) : c_int;

extern proc chpl_dyno_isComment(node : chpl_dyno_Comment) : c_int;

extern proc chpl_dyno_isContinue(node : chpl_dyno_Continue) : c_int;

extern proc chpl_dyno_isDelete(node : chpl_dyno_Delete) : c_int;

extern proc chpl_dyno_isDomain(node : chpl_dyno_Domain) : c_int;

extern proc chpl_dyno_isDot(node : chpl_dyno_Dot) : c_int;

extern proc chpl_dyno_isEmptyStmt(node : chpl_dyno_EmptyStmt) : c_int;

extern proc chpl_dyno_isErroneousExpression(node : chpl_dyno_ErroneousExpression) : c_int;

extern proc chpl_dyno_isExternBlock(node : chpl_dyno_ExternBlock) : c_int;

extern proc chpl_dyno_isFunctionSignature(node : chpl_dyno_FunctionSignature) : c_int;

extern proc chpl_dyno_isIdentifier(node : chpl_dyno_Identifier) : c_int;

extern proc chpl_dyno_isImplements(node : chpl_dyno_Implements) : c_int;

extern proc chpl_dyno_isImport(node : chpl_dyno_Import) : c_int;

extern proc chpl_dyno_isInclude(node : chpl_dyno_Include) : c_int;

extern proc chpl_dyno_isInit(node : chpl_dyno_Init) : c_int;

extern proc chpl_dyno_isLabel(node : chpl_dyno_Label) : c_int;

extern proc chpl_dyno_isLet(node : chpl_dyno_Let) : c_int;

extern proc chpl_dyno_isNew(node : chpl_dyno_New) : c_int;

extern proc chpl_dyno_isRange(node : chpl_dyno_Range) : c_int;

extern proc chpl_dyno_isRequire(node : chpl_dyno_Require) : c_int;

extern proc chpl_dyno_isReturn(node : chpl_dyno_Return) : c_int;

extern proc chpl_dyno_isSelect(node : chpl_dyno_Select) : c_int;

extern proc chpl_dyno_isThrow(node : chpl_dyno_Throw) : c_int;

extern proc chpl_dyno_isTry(node : chpl_dyno_Try) : c_int;

extern proc chpl_dyno_isUse(node : chpl_dyno_Use) : c_int;

extern proc chpl_dyno_isVisibilityClause(node : chpl_dyno_VisibilityClause) : c_int;

extern proc chpl_dyno_isWhen(node : chpl_dyno_When) : c_int;

extern proc chpl_dyno_isWithClause(node : chpl_dyno_WithClause) : c_int;

extern proc chpl_dyno_isYield(node : chpl_dyno_Yield) : c_int;

extern proc chpl_dyno_isBegin(node : chpl_dyno_Begin) : c_int;

extern proc chpl_dyno_isBlock(node : chpl_dyno_Block) : c_int;

extern proc chpl_dyno_isDefer(node : chpl_dyno_Defer) : c_int;

extern proc chpl_dyno_isLocal(node : chpl_dyno_Local) : c_int;

extern proc chpl_dyno_isManage(node : chpl_dyno_Manage) : c_int;

extern proc chpl_dyno_isOn(node : chpl_dyno_On) : c_int;

extern proc chpl_dyno_isSerial(node : chpl_dyno_Serial) : c_int;

extern proc chpl_dyno_isSync(node : chpl_dyno_Sync) : c_int;

extern proc chpl_dyno_isDoWhile(node : chpl_dyno_DoWhile) : c_int;

extern proc chpl_dyno_isWhile(node : chpl_dyno_While) : c_int;

extern proc chpl_dyno_isBracketLoop(node : chpl_dyno_BracketLoop) : c_int;

extern proc chpl_dyno_isCoforall(node : chpl_dyno_Coforall) : c_int;

extern proc chpl_dyno_isFor(node : chpl_dyno_For) : c_int;

extern proc chpl_dyno_isForall(node : chpl_dyno_Forall) : c_int;

extern proc chpl_dyno_isForeach(node : chpl_dyno_Foreach) : c_int;

extern proc chpl_dyno_isBoolLiteral(node : chpl_dyno_BoolLiteral) : c_int;

extern proc chpl_dyno_isImagLiteral(node : chpl_dyno_ImagLiteral) : c_int;

extern proc chpl_dyno_isIntLiteral(node : chpl_dyno_IntLiteral) : c_int;

extern proc chpl_dyno_isRealLiteral(node : chpl_dyno_RealLiteral) : c_int;

extern proc chpl_dyno_isUintLiteral(node : chpl_dyno_UintLiteral) : c_int;

extern proc chpl_dyno_isBytesLiteral(node : chpl_dyno_BytesLiteral) : c_int;

extern proc chpl_dyno_isStringLiteral(node : chpl_dyno_StringLiteral) : c_int;

extern proc chpl_dyno_isFnCall(node : chpl_dyno_FnCall) : c_int;

extern proc chpl_dyno_isOpCall(node : chpl_dyno_OpCall) : c_int;

extern proc chpl_dyno_isPrimCall(node : chpl_dyno_PrimCall) : c_int;

extern proc chpl_dyno_isReduce(node : chpl_dyno_Reduce) : c_int;

extern proc chpl_dyno_isScan(node : chpl_dyno_Scan) : c_int;

extern proc chpl_dyno_isTuple(node : chpl_dyno_Tuple) : c_int;

extern proc chpl_dyno_isZip(node : chpl_dyno_Zip) : c_int;

extern proc chpl_dyno_isMultiDecl(node : chpl_dyno_MultiDecl) : c_int;

extern proc chpl_dyno_isTupleDecl(node : chpl_dyno_TupleDecl) : c_int;

extern proc chpl_dyno_isForwardingDecl(node : chpl_dyno_ForwardingDecl) : c_int;

extern proc chpl_dyno_isEnumElement(node : chpl_dyno_EnumElement) : c_int;

extern proc chpl_dyno_isFunction(node : chpl_dyno_Function) : c_int;

extern proc chpl_dyno_isInterface(node : chpl_dyno_Interface) : c_int;

extern proc chpl_dyno_isModule(node : chpl_dyno_Module) : c_int;

extern proc chpl_dyno_isTypeQuery(node : chpl_dyno_TypeQuery) : c_int;

extern proc chpl_dyno_isReduceIntent(node : chpl_dyno_ReduceIntent) : c_int;

extern proc chpl_dyno_isFormal(node : chpl_dyno_Formal) : c_int;

extern proc chpl_dyno_isTaskVar(node : chpl_dyno_TaskVar) : c_int;

extern proc chpl_dyno_isVarArgFormal(node : chpl_dyno_VarArgFormal) : c_int;

extern proc chpl_dyno_isVariable(node : chpl_dyno_Variable) : c_int;

extern proc chpl_dyno_isEnum(node : chpl_dyno_Enum) : c_int;

extern proc chpl_dyno_isClass(node : chpl_dyno_Class) : c_int;

extern proc chpl_dyno_isRecord(node : chpl_dyno_Record) : c_int;

extern proc chpl_dyno_isUnion(node : chpl_dyno_Union) : c_int;

extern proc chpl_dyno_toAnonFormal(node : chpl_dyno_AstNode) : chpl_dyno_AnonFormal;

extern proc chpl_dyno_toAs(node : chpl_dyno_AstNode) : chpl_dyno_As;

extern proc chpl_dyno_toArray(node : chpl_dyno_AstNode) : chpl_dyno_Array;

extern proc chpl_dyno_toArrayRow(node : chpl_dyno_AstNode) : chpl_dyno_ArrayRow;

extern proc chpl_dyno_toAttribute(node : chpl_dyno_AstNode) : chpl_dyno_Attribute;

extern proc chpl_dyno_toAttributeGroup(node : chpl_dyno_AstNode) : chpl_dyno_AttributeGroup;

extern proc chpl_dyno_toBreak(node : chpl_dyno_AstNode) : chpl_dyno_Break;

extern proc chpl_dyno_toCatch(node : chpl_dyno_AstNode) : chpl_dyno_Catch;

extern proc chpl_dyno_toCobegin(node : chpl_dyno_AstNode) : chpl_dyno_Cobegin;

extern proc chpl_dyno_toConditional(node : chpl_dyno_AstNode) : chpl_dyno_Conditional;

extern proc chpl_dyno_toComment(node : chpl_dyno_AstNode) : chpl_dyno_Comment;

extern proc chpl_dyno_toContinue(node : chpl_dyno_AstNode) : chpl_dyno_Continue;

extern proc chpl_dyno_toDelete(node : chpl_dyno_AstNode) : chpl_dyno_Delete;

extern proc chpl_dyno_toDomain(node : chpl_dyno_AstNode) : chpl_dyno_Domain;

extern proc chpl_dyno_toDot(node : chpl_dyno_AstNode) : chpl_dyno_Dot;

extern proc chpl_dyno_toEmptyStmt(node : chpl_dyno_AstNode) : chpl_dyno_EmptyStmt;

extern proc chpl_dyno_toErroneousExpression(node : chpl_dyno_AstNode) : chpl_dyno_ErroneousExpression;

extern proc chpl_dyno_toExternBlock(node : chpl_dyno_AstNode) : chpl_dyno_ExternBlock;

extern proc chpl_dyno_toFunctionSignature(node : chpl_dyno_AstNode) : chpl_dyno_FunctionSignature;

extern proc chpl_dyno_toIdentifier(node : chpl_dyno_AstNode) : chpl_dyno_Identifier;

extern proc chpl_dyno_toImplements(node : chpl_dyno_AstNode) : chpl_dyno_Implements;

extern proc chpl_dyno_toImport(node : chpl_dyno_AstNode) : chpl_dyno_Import;

extern proc chpl_dyno_toInclude(node : chpl_dyno_AstNode) : chpl_dyno_Include;

extern proc chpl_dyno_toInit(node : chpl_dyno_AstNode) : chpl_dyno_Init;

extern proc chpl_dyno_toLabel(node : chpl_dyno_AstNode) : chpl_dyno_Label;

extern proc chpl_dyno_toLet(node : chpl_dyno_AstNode) : chpl_dyno_Let;

extern proc chpl_dyno_toNew(node : chpl_dyno_AstNode) : chpl_dyno_New;

extern proc chpl_dyno_toRange(node : chpl_dyno_AstNode) : chpl_dyno_Range;

extern proc chpl_dyno_toRequire(node : chpl_dyno_AstNode) : chpl_dyno_Require;

extern proc chpl_dyno_toReturn(node : chpl_dyno_AstNode) : chpl_dyno_Return;

extern proc chpl_dyno_toSelect(node : chpl_dyno_AstNode) : chpl_dyno_Select;

extern proc chpl_dyno_toThrow(node : chpl_dyno_AstNode) : chpl_dyno_Throw;

extern proc chpl_dyno_toTry(node : chpl_dyno_AstNode) : chpl_dyno_Try;

extern proc chpl_dyno_toUse(node : chpl_dyno_AstNode) : chpl_dyno_Use;

extern proc chpl_dyno_toVisibilityClause(node : chpl_dyno_AstNode) : chpl_dyno_VisibilityClause;

extern proc chpl_dyno_toWhen(node : chpl_dyno_AstNode) : chpl_dyno_When;

extern proc chpl_dyno_toWithClause(node : chpl_dyno_AstNode) : chpl_dyno_WithClause;

extern proc chpl_dyno_toYield(node : chpl_dyno_AstNode) : chpl_dyno_Yield;

extern proc chpl_dyno_toBegin(node : chpl_dyno_AstNode) : chpl_dyno_Begin;

extern proc chpl_dyno_toBlock(node : chpl_dyno_AstNode) : chpl_dyno_Block;

extern proc chpl_dyno_toDefer(node : chpl_dyno_AstNode) : chpl_dyno_Defer;

extern proc chpl_dyno_toLocal(node : chpl_dyno_AstNode) : chpl_dyno_Local;

extern proc chpl_dyno_toManage(node : chpl_dyno_AstNode) : chpl_dyno_Manage;

extern proc chpl_dyno_toOn(node : chpl_dyno_AstNode) : chpl_dyno_On;

extern proc chpl_dyno_toSerial(node : chpl_dyno_AstNode) : chpl_dyno_Serial;

extern proc chpl_dyno_toSync(node : chpl_dyno_AstNode) : chpl_dyno_Sync;

extern proc chpl_dyno_toDoWhile(node : chpl_dyno_AstNode) : chpl_dyno_DoWhile;

extern proc chpl_dyno_toWhile(node : chpl_dyno_AstNode) : chpl_dyno_While;

extern proc chpl_dyno_toBracketLoop(node : chpl_dyno_AstNode) : chpl_dyno_BracketLoop;

extern proc chpl_dyno_toCoforall(node : chpl_dyno_AstNode) : chpl_dyno_Coforall;

extern proc chpl_dyno_toFor(node : chpl_dyno_AstNode) : chpl_dyno_For;

extern proc chpl_dyno_toForall(node : chpl_dyno_AstNode) : chpl_dyno_Forall;

extern proc chpl_dyno_toForeach(node : chpl_dyno_AstNode) : chpl_dyno_Foreach;

extern proc chpl_dyno_toBoolLiteral(node : chpl_dyno_AstNode) : chpl_dyno_BoolLiteral;

extern proc chpl_dyno_toImagLiteral(node : chpl_dyno_AstNode) : chpl_dyno_ImagLiteral;

extern proc chpl_dyno_toIntLiteral(node : chpl_dyno_AstNode) : chpl_dyno_IntLiteral;

extern proc chpl_dyno_toRealLiteral(node : chpl_dyno_AstNode) : chpl_dyno_RealLiteral;

extern proc chpl_dyno_toUintLiteral(node : chpl_dyno_AstNode) : chpl_dyno_UintLiteral;

extern proc chpl_dyno_toBytesLiteral(node : chpl_dyno_AstNode) : chpl_dyno_BytesLiteral;

extern proc chpl_dyno_toStringLiteral(node : chpl_dyno_AstNode) : chpl_dyno_StringLiteral;

extern proc chpl_dyno_toFnCall(node : chpl_dyno_AstNode) : chpl_dyno_FnCall;

extern proc chpl_dyno_toOpCall(node : chpl_dyno_AstNode) : chpl_dyno_OpCall;

extern proc chpl_dyno_toPrimCall(node : chpl_dyno_AstNode) : chpl_dyno_PrimCall;

extern proc chpl_dyno_toReduce(node : chpl_dyno_AstNode) : chpl_dyno_Reduce;

extern proc chpl_dyno_toScan(node : chpl_dyno_AstNode) : chpl_dyno_Scan;

extern proc chpl_dyno_toTuple(node : chpl_dyno_AstNode) : chpl_dyno_Tuple;

extern proc chpl_dyno_toZip(node : chpl_dyno_AstNode) : chpl_dyno_Zip;

extern proc chpl_dyno_toMultiDecl(node : chpl_dyno_AstNode) : chpl_dyno_MultiDecl;

extern proc chpl_dyno_toTupleDecl(node : chpl_dyno_AstNode) : chpl_dyno_TupleDecl;

extern proc chpl_dyno_toForwardingDecl(node : chpl_dyno_AstNode) : chpl_dyno_ForwardingDecl;

extern proc chpl_dyno_toEnumElement(node : chpl_dyno_AstNode) : chpl_dyno_EnumElement;

extern proc chpl_dyno_toFunction(node : chpl_dyno_AstNode) : chpl_dyno_Function;

extern proc chpl_dyno_toInterface(node : chpl_dyno_AstNode) : chpl_dyno_Interface;

extern proc chpl_dyno_toModule(node : chpl_dyno_AstNode) : chpl_dyno_Module;

extern proc chpl_dyno_toTypeQuery(node : chpl_dyno_AstNode) : chpl_dyno_TypeQuery;

extern proc chpl_dyno_toReduceIntent(node : chpl_dyno_AstNode) : chpl_dyno_ReduceIntent;

extern proc chpl_dyno_toFormal(node : chpl_dyno_AstNode) : chpl_dyno_Formal;

extern proc chpl_dyno_toTaskVar(node : chpl_dyno_AstNode) : chpl_dyno_TaskVar;

extern proc chpl_dyno_toVarArgFormal(node : chpl_dyno_AstNode) : chpl_dyno_VarArgFormal;

extern proc chpl_dyno_toVariable(node : chpl_dyno_AstNode) : chpl_dyno_Variable;

extern proc chpl_dyno_toEnum(node : chpl_dyno_AstNode) : chpl_dyno_Enum;

extern proc chpl_dyno_toClass(node : chpl_dyno_AstNode) : chpl_dyno_Class;

extern proc chpl_dyno_toRecord(node : chpl_dyno_AstNode) : chpl_dyno_Record;

extern proc chpl_dyno_toUnion(node : chpl_dyno_AstNode) : chpl_dyno_Union;

extern proc chpl_dyno_Context_parse(context : chpl_dyno_Context, file : c_ptrConst(c_char)) : chpl_dyno_AstNodeList;

extern proc chpl_dyno_AstNode_id(node : chpl_dyno_AstNode) : c_ptrConst(c_char);

extern proc chpl_dyno_AstNode_tag(node : chpl_dyno_AstNode) : c_ptrConst(c_char);

extern proc chpl_dyno_AstNode_numChildren(node : chpl_dyno_AstNode) : c_int;

extern proc chpl_dyno_AstNode_child(node : chpl_dyno_AstNode, i : c_int) : chpl_dyno_AstNode;

extern proc chpl_dyno_AstNodeList_size(list : chpl_dyno_AstNodeList) : c_int;

extern proc chpl_dyno_AstNodeList_get(list : chpl_dyno_AstNodeList, i : c_int) : chpl_dyno_AstNode;

extern proc chpl_dyno_Comment_text(comment : chpl_dyno_Comment) : c_ptrConst(c_char);

// ==== c2chapel typedefs ====

extern type chpl_dyno_AnonFormal = c_ptr(void);

extern type chpl_dyno_Array = c_ptr(void);

extern type chpl_dyno_ArrayRow = c_ptr(void);

extern type chpl_dyno_As = c_ptr(void);

extern type chpl_dyno_AstNode = c_ptr(void);

extern type chpl_dyno_AstNodeList = c_ptr(void);

extern type chpl_dyno_Attribute = c_ptr(void);

extern type chpl_dyno_AttributeGroup = c_ptr(void);

extern type chpl_dyno_Begin = c_ptr(void);

extern type chpl_dyno_Block = c_ptr(void);

extern type chpl_dyno_BoolLiteral = c_ptr(void);

extern type chpl_dyno_BracketLoop = c_ptr(void);

extern type chpl_dyno_Break = c_ptr(void);

extern type chpl_dyno_BytesLiteral = c_ptr(void);

extern type chpl_dyno_Catch = c_ptr(void);

extern type chpl_dyno_Class = c_ptr(void);

extern type chpl_dyno_Cobegin = c_ptr(void);

extern type chpl_dyno_Coforall = c_ptr(void);

extern type chpl_dyno_Comment = c_ptr(void);

extern type chpl_dyno_Conditional = c_ptr(void);

extern type chpl_dyno_Context = c_ptr(void);

extern type chpl_dyno_Continue = c_ptr(void);

extern type chpl_dyno_Defer = c_ptr(void);

extern type chpl_dyno_Delete = c_ptr(void);

extern type chpl_dyno_DoWhile = c_ptr(void);

extern type chpl_dyno_Domain = c_ptr(void);

extern type chpl_dyno_Dot = c_ptr(void);

extern type chpl_dyno_EmptyStmt = c_ptr(void);

extern type chpl_dyno_Enum = c_ptr(void);

extern type chpl_dyno_EnumElement = c_ptr(void);

extern type chpl_dyno_ErroneousExpression = c_ptr(void);

extern type chpl_dyno_ExternBlock = c_ptr(void);

extern type chpl_dyno_FnCall = c_ptr(void);

extern type chpl_dyno_For = c_ptr(void);

extern type chpl_dyno_Forall = c_ptr(void);

extern type chpl_dyno_Foreach = c_ptr(void);

extern type chpl_dyno_Formal = c_ptr(void);

extern type chpl_dyno_ForwardingDecl = c_ptr(void);

extern type chpl_dyno_Function = c_ptr(void);

extern type chpl_dyno_FunctionSignature = c_ptr(void);

extern type chpl_dyno_Identifier = c_ptr(void);

extern type chpl_dyno_ImagLiteral = c_ptr(void);

extern type chpl_dyno_Implements = c_ptr(void);

extern type chpl_dyno_Import = c_ptr(void);

extern type chpl_dyno_Include = c_ptr(void);

extern type chpl_dyno_Init = c_ptr(void);

extern type chpl_dyno_IntLiteral = c_ptr(void);

extern type chpl_dyno_Interface = c_ptr(void);

extern type chpl_dyno_Label = c_ptr(void);

extern type chpl_dyno_Let = c_ptr(void);

extern type chpl_dyno_Local = c_ptr(void);

extern type chpl_dyno_Manage = c_ptr(void);

extern type chpl_dyno_Module = c_ptr(void);

extern type chpl_dyno_MultiDecl = c_ptr(void);

extern type chpl_dyno_New = c_ptr(void);

extern type chpl_dyno_On = c_ptr(void);

extern type chpl_dyno_OpCall = c_ptr(void);

extern type chpl_dyno_PrimCall = c_ptr(void);

extern type chpl_dyno_Range = c_ptr(void);

extern type chpl_dyno_RealLiteral = c_ptr(void);

extern type chpl_dyno_Record = c_ptr(void);

extern type chpl_dyno_Reduce = c_ptr(void);

extern type chpl_dyno_ReduceIntent = c_ptr(void);

extern type chpl_dyno_Require = c_ptr(void);

extern type chpl_dyno_Return = c_ptr(void);

extern type chpl_dyno_Scan = c_ptr(void);

extern type chpl_dyno_Select = c_ptr(void);

extern type chpl_dyno_Serial = c_ptr(void);

extern type chpl_dyno_StringLiteral = c_ptr(void);

extern type chpl_dyno_Sync = c_ptr(void);

extern type chpl_dyno_TaskVar = c_ptr(void);

extern type chpl_dyno_Throw = c_ptr(void);

extern type chpl_dyno_Try = c_ptr(void);

extern type chpl_dyno_Tuple = c_ptr(void);

extern type chpl_dyno_TupleDecl = c_ptr(void);

extern type chpl_dyno_TypeQuery = c_ptr(void);

extern type chpl_dyno_UintLiteral = c_ptr(void);

extern type chpl_dyno_Union = c_ptr(void);

extern type chpl_dyno_Use = c_ptr(void);

extern type chpl_dyno_VarArgFormal = c_ptr(void);

extern type chpl_dyno_Variable = c_ptr(void);

extern type chpl_dyno_VisibilityClause = c_ptr(void);

extern type chpl_dyno_When = c_ptr(void);

extern type chpl_dyno_While = c_ptr(void);

extern type chpl_dyno_WithClause = c_ptr(void);

extern type chpl_dyno_Yield = c_ptr(void);

extern type chpl_dyno_Zip = c_ptr(void);

