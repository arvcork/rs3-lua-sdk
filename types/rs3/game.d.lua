---@meta

---@class Achievement
Achievement = {}
---@param group integer
---@return boolean
function Achievement:GetPrereqGroupComplete(group) end
---@param group integer
---@return boolean
function Achievement:GetSubItemCompletionCountForPrereqGroup(group) end
---@param group integer
---@return boolean
function Achievement:GetSubItemCompletionCountForRequirementGroup(group) end

---@enum AchievementDescriptionType
AchievementDescriptionType = {
    DEFAULT = 0,
    GROUP_IRONMAN_SIZE_2 = 2,
    GROUP_IRONMAN_SIZE_3 = 3,
    GROUP_IRONMAN_SIZE_4 = 4,
    GROUP_IRONMAN_SIZE_5 = 5,
    IRONMAN = 1,
}

---@enum AchievementHiddenType
AchievementHiddenType = {
    IF_LOCKED = 1,
    NEVER = 0,
    UNTIL_COMPLETE = 2,
}

---@enum AchievementProgressType
AchievementProgressType = {
    COMPLETE = -2,
    DEPRECATED = -4,
    GRACE = -3,
    LOCKED = -1,
    READY = 0,
}

---@class AchievementType
---@field achievement AchievementType
---@field achievements table
---@field bitIndex integer
---@field bitValue integer
---@field category integer
---@field completionCountForPrereqGroups integer
---@field completionCountForRequirementGroups integer
---@field configName string
---@field dbRowConfig DBRow
---@field description string
---@field descriptions table[]
---@field graceExpiryRunedate integer
---@field group integer
---@field hasRequirementDescriptions boolean
---@field hiddenType AchievementHiddenType
---@field id integer
---@field isComplete boolean
---@field isMembers boolean
---@field name string
---@field prereqGroupCount integer
---@field prereqs table
---@field prereqsComplete boolean
---@field progress integer
---@field quest QuestType
---@field requirementGroupCount integer
---@field reward string
---@field runeScore integer
---@field skillTypes SkillType[]
---@field spriteID integer
---@field subCategory integer
---@field tallyProgress integer
---@field tallyTarget integer
---@field totalLevels integer
---@field totalPrereqCount integer
---@field totalRequirementCount integer
---@field totalValue integer
---@field typeName string
---@field var VarType
---@field vars VarType[]
AchievementType = {}

---@enum AnimationDuplicateBehaviour
AnimationDuplicateBehaviour = {
    CONTINUE = 0,
    LOOP_RESET = 2,
    RESET = 1,
}

---@class BaseAnimSetType
---@field configName string
---@field id integer
---@field overlayHeight integer
---@field typeName string
BaseAnimSetType = {}

---@class Camera
Camera = {}
---@return Vector3
function Camera.GetFocusPosition() end
---@return Vector3
function Camera.GetPosition() end
---@return boolean
function Camera.IsAvailable() end

---@enum ChatType
ChatType = {
    ALLY_REQUEST = 108,
    ALL_PANES = 120,
    ASSIST_NOTIFICATION = 104,
    ASSIST_REQUEST = 102,
    BROADCAST = 125,
    BROADCAST_FRIENDS = 139,
    BROADCAST_GLOBAL = 137,
    BROADCAST_WORLD = 138,
    CHALLENGE = 101,
    CLANCHANNEL_AFFINED_CHAT = 41,
    CLANCHANNEL_AFFINED_NOTIFICATION = 43,
    CLANCHANNEL_AFFINED_QUICKCHAT = 42,
    CLANCHANNEL_GUEST_CHAT = 44,
    CLANCHANNEL_GUEST_NOTIFICATION = 46,
    CLANCHANNEL_GUEST_QUICKCHAT = 45,
    CLAN_CHALLENGE = 107,
    CLAN_JOIN = 117,
    CONQUEST_REGULAR_CHALLENGE = 113,
    CONSOLE = 99,
    CONSOLE_BUFFER_REPLACE = 98,
    CONSOLE_ERROR = 96,
    DUEL_ANY_REQUEST = 132,
    DUNGEON_INVITE = 111,
    ENGINE = 4,
    FRIEND_CHAT = 9,
    FRIEND_CHAT_NOTIFICATION = 11,
    FRIEND_NOTIFICATION = 30,
    GENERAL = 0,
    GENERAL_LINKABLE = 145,
    GROUPCHAT_NOTIFICATION = 128,
    GROUP_ALL = 24,
    GROUP_IRONMAN_NOTIFICATION = 144,
    GROUP_SAME_TEAM = 22,
    HATI_FENRIR = 134,
    IGNORABLE_TRADE_NOTIFICATION = 119,
    IGNORE_NOTIFICATION = 31,
    INTERFACE_OPEN = 140,
    INTERFACE_OPEN_FILTERED = 143,
    LATEST_NEWSPOST = 135,
    LOC_EXAMINE = 29,
    LOGIN_LOGOUT = 5,
    MISC_BROADCAST = 127,
    MOD = 1,
    MOD_PRIVATE_INCOMING = 7,
    MOTD = 136,
    NPC_CHAT = 116,
    NPC_EXAMINE = 28,
    OBJ_EXAMINE = 27,
    PLUGIN = 33,
    PRIVATE_INCOMING = 3,
    PRIVATE_OUTGOING = 6,
    PUBLIC = 2,
    QUICKCHAT_FRIEND_CHAT = 20,
    QUICKCHAT_GROUP_ALL = 25,
    QUICKCHAT_GROUP_SAME_TEAM = 23,
    QUICKCHAT_PRIVATE_INCOMING = 18,
    QUICKCHAT_PRIVATE_OUTGOING = 19,
    QUICKCHAT_PUBLIC = 17,
    RAID_DND = 123,
    RAID_HIGH = 122,
    RATED_CLAN_WAR = 118,
    SNAPSHOT_FEEDBACK = 26,
    SPAM = 109,
    SYSTEM_BROADCAST = 115,
    TEMPORARY_EVENT = 133,
    TIMED_EVENT = 142,
    TRADE_NOTIFICATION = 103,
    TRADE_REQUEST = 100,
    WORLD_EVENT = 126,
}

---@class CursorType
---@field configName string
---@field hotspotX integer
---@field hotspotY integer
---@field id integer
---@field spriteID integer
---@field typeName string
CursorType = {}

---@class DBRow
DBRow = {}
---@param columnIndex integer
---@return integer
function DBRow:GetColumnValueCount(columnIndex) end
---@param columnIndex integer
---@return ValueType[]
function DBRow:GetColumnValueTypes(columnIndex) end
---@param columnIndex integer
---@return any[]
function DBRow:GetColumnValues(columnIndex) end

---@class DBRowType
---@field columnCount integer
---@field configName string
---@field id integer
---@field ownerDBTable DBTable
---@field typeName string
DBRowType = {}

---@class DBTable
DBTable = {}
---@param columnIndex integer
---@return any[]
function DBTable:GetColumnDefaultValues(columnIndex) end
---@param columnIndex integer
---@return boolean
function DBTable:GetColumnHasDefaultValues(columnIndex) end
---@param columnIndex integer
---@return integer
function DBTable:GetColumnValueCount(columnIndex) end
---@param columnIndex integer
---@return ValueType[]
function DBTable:GetColumnValueTypes(columnIndex) end

---@class DBTableType
---@field columnCount integer
---@field configName string
---@field id integer
---@field typeName string
DBTableType = {}

---@class Enum
Enum = {}
---@param outputValue any
---@return any[]
function Enum:GetInputValues(outputValue) end
---@param inputValue any
---@return any
function Enum:GetOutputValue(inputValue) end
---@param outputValue any
---@return boolean
function Enum:HasOutputValue(outputValue) end

---@class EnumType
---@field configName string
---@field id integer
---@field inputValueType ValueType
---@field outputValueType ValueType
---@field typeName string
---@field valueCount integer
---@field values [any, any][]
EnumType = {}

---@class Font
Font = {}
---@param text string
---@param lineIndex integer
---@param wrapWidth integer
---@param ignoreTags boolean?
---@param noWordWrapping boolean?
---@param noTrimEdges boolean?
---@return string
function Font:GetSplitStringLine(text, lineIndex, wrapWidth, ignoreTags, noWordWrapping, noTrimEdges) end
---@param text string
---@param wrapWidth integer
---@param lineSpacing integer
---@param ignoreTags boolean?
---@param noWordWrapping boolean?
---@param noTrimEdges boolean?
---@return integer, integer
function Font:GetStringHeightAndLineCount(text, wrapWidth, lineSpacing, ignoreTags, noWordWrapping, noTrimEdges) end
---@param text string
---@param wrapWidth integer
---@param ignoreTags boolean?
---@param noWordWrapping boolean?
---@param noTrimEdges boolean?
---@return integer
function Font:GetStringLineCount(text, wrapWidth, ignoreTags, noWordWrapping, noTrimEdges) end
---@param text string
---@param ignoreTags boolean?
---@return integer
function Font:GetStringWidth(text, ignoreTags) end
---@param text string
---@param wrapWidth integer
---@param ignoreTags boolean?
---@param noWordWrapping boolean?
---@param noTrimEdges boolean?
---@return integer
function Font:GetStringWidthMultiline(text, wrapWidth, ignoreTags, noWordWrapping, noTrimEdges) end
---@param text string
---@param wrapWidth integer
---@param ignoreTags boolean?
---@param noWordWrapping boolean?
---@param noTrimEdges boolean?
---@return string[]
function Font:SplitString(text, wrapWidth, ignoreTags, noWordWrapping, noTrimEdges) end

---@class FontType
---@field baseline integer
---@field configName string
---@field id integer
---@field lowerCaseAscent integer
---@field maxAscent integer
---@field maxDescent integer
---@field typeName string
---@field upperCaseAscent integer
FontType = {}

---@class GrandExchangeOffer
---@field goldFromSale integer
---@field item ObjType
---@field itemCount integer
---@field price integer
---@field soldCount integer
---@field stage GrandExchangeOfferStage
---@field type GrandExchangeOfferType
GrandExchangeOffer = {}

---@enum GrandExchangeOfferStage
GrandExchangeOfferStage = {
    ABORTING = 4,
    ADDED = 2,
    ADDING = 1,
    EMPTY = 0,
    FINISHED = 5,
    VERIFYING = 3,
}

---@enum GrandExchangeOfferType
GrandExchangeOfferType = {
    BUY = 0,
    SELL = 1,
}

---@class HeadbarType
---@field configName string
---@field displayOrder integer
---@field id integer
---@field typeName string
HeadbarType = {}

---@enum HeightOffsetType
HeightOffsetType = {
    GROUND_DECOR = 1,
    LOCATION = 2,
    NONE = 0,
}

---@class HitmarkType
---@field configName string
---@field duration integer
---@field id integer
---@field typeName string
HitmarkType = {}

---@class Inv
---@field config InvType
---@field freeSlotCount integer
---@field id integer
---@field isValid boolean
---@field slotCount integer
---@field usedSlotCount integer
Inv = {}
---@param category integer
---@return integer
function Inv:GetCategoryTotal(category) end
---@param index integer
---@return InvSlot?
function Inv:GetSlot(index) end
---@return InvSlot[]?
function Inv:GetSlots() end
---@overload fun(self: Inv, objType: ObjType): integer
---@param id integer
---@return integer
function Inv:GetTotal(id) end

---@class InvSlot
---@field count integer
---@field obj ObjType
InvSlot = {}

---@class InvType
---@field configName string
---@field id integer
---@field size integer
---@field stockCount integer
---@field typeName string
InvType = {}

---@class Inventory
Inventory = {}
---@overload fun(id: integer): Inv
---@param config InvType
---@return Inv
function Inventory.Find(config) end

---@class Loc
Loc = {}
---@param locShapeType LocShapeType
---@return integer[]
function Loc:GetModelIDs(locShapeType) end
---@param opIndex integer
---@return CursorType?
function Loc:GetOpCursor(opIndex) end
---@param param ParamType
---@return any
function Loc:GetParamValue(param) end
---@param param ParamType
---@return boolean
function Loc:HasParam(param) end

---@class LocEntity
---@field config LocType
---@field configID integer
---@field coordGrid CoordGrid
---@field currentAnimation SeqType
---@field displayName string
---@field isHidden boolean
---@field isMultiLoc boolean
---@field isRoofRemoved boolean
---@field isValid boolean
---@field length integer
---@field parentConfig LocType
---@field parentConfigID integer
---@field position Vector3
---@field rotationType RotationType
---@field shapeType LocShapeType
---@field width integer
LocEntity = {}

---@class LocList
LocList = {}
---@return LocEntity[]
function LocList.All() end
---@param locType LocType
---@return LocEntity[]
function LocList.ByConfig(locType) end
---@param locTypeID integer
---@return LocEntity[]
function LocList.ByConfigID(locTypeID) end
---@param coordGrid CoordGrid
---@param range integer
---@param sameLevel boolean
---@return LocEntity[]
function LocList.ByDistance(coordGrid, range, sameLevel) end
---@param name string
---@return LocEntity[]
function LocList.ByName(name) end
---@param locType LocType
---@return LocEntity[]
function LocList.ByParentConfig(locType) end
---@param locTypeID integer
---@return LocEntity[]
function LocList.ByParentConfigID(locTypeID) end
---@param filterSet table
---@return LocEntity[]
function LocList.Filter(filterSet) end

---@enum LocShapeType
LocShapeType = {
    CENTREPIECE_DIAGONAL = 11,
    CENTREPIECE_STRAIGHT = 10,
    GROUNDDECOR = 22,
    ROOFEDGE_DIAGONALCORNER = 19,
    ROOFEDGE_L = 20,
    ROOFEDGE_SQUARECORNER = 21,
    ROOFEDGE_STRAIGHT = 18,
    ROOF_DIAGONAL = 14,
    ROOF_DIAGONAL_WITH_ROOFEDGE = 13,
    ROOF_FLAT = 17,
    ROOF_L_CONCAVE = 15,
    ROOF_L_CONVEX = 16,
    ROOF_STRAIGHT = 12,
    WALLDECOR_DIAGONAL_BOTH = 8,
    WALLDECOR_DIAGONAL_BOTH_ALT = 24,
    WALLDECOR_DIAGONAL_NOOFFSET = 7,
    WALLDECOR_DIAGONAL_OFFSET = 6,
    WALLDECOR_STRAIGHT_NOOFFSET = 4,
    WALLDECOR_STRAIGHT_OFFSET = 5,
    WALL_DIAGONAL = 9,
    WALL_DIAGONALCORNER = 1,
    WALL_L = 2,
    WALL_L_ALT = 23,
    WALL_SQUARECORNER = 3,
    WALL_STRAIGHT = 0,
}

---@class LocType
---@field IsActive boolean
---@field animations SeqType[]
---@field blockWalk boolean
---@field configName string
---@field customBounding AABB?
---@field defaultAnimation SeqType
---@field fastPicking boolean
---@field groundDecorOffset integer
---@field hasCustomBounding boolean
---@field id integer
---@field isExamineOnly boolean
---@field isMultiLoc boolean
---@field length integer
---@field locShapeTypes LocShapeType[]
---@field mapElement MapElementType
---@field modelOffset Vector3
---@field modelPostOffset Vector3
---@field modelScale Vector3
---@field multiVar VarType
---@field name string
---@field opNames string[]
---@field params ParamType[]
---@field quests QuestType[]
---@field typeName string
---@field useRandomAnimationFrame boolean
---@field width integer
LocType = {}

---@class MapElement
MapElement = {}
---@param param ParamType
---@return any
function MapElement:GetParamValue(param) end
---@param param ParamType
---@return boolean
function MapElement:HasParam(param) end

---@enum MapElementHorizontalAlign
MapElementHorizontalAlign = {
    CENTRE = 1,
    LEFT = 0,
    RIGHT = 2,
}

---@enum MapElementTextSize
MapElementTextSize = {
    LARGE = 2,
    MEDIUM = 1,
    SMALL = 0,
}

---@class MapElementType
---@field alignHorizontal MapElementHorizontalAlign
---@field alignVertical MapElementVerticalAlign
---@field category integer
---@field configName string
---@field id integer
---@field isMultiMapElement boolean
---@field listable boolean
---@field minimapIconScale integer
---@field showOnMiniMap boolean
---@field spriteID integer
---@field spriteMouseOverID integer
---@field subjectText string
---@field text string
---@field textBGFillColour Vector4
---@field textBGFillRGBA integer
---@field textBGOutlineColour Vector4
---@field textBGOutlineRGBA integer
---@field textColour Vector4
---@field textMouseOverColour Vector4
---@field textMouseOverRGBA integer
---@field textOffsetX integer
---@field textOffsetZ integer
---@field textRGBA integer
---@field textSize MapElementTextSize
---@field typeName string
MapElementType = {}

---@enum MapElementVerticalAlign
MapElementVerticalAlign = {
    BOTTOM = 2,
    CENTRE = 1,
    TOP = 0,
}

---@class MiniMenu
---@field actionEntryType MiniMenuEntryType
---@field actionType MiniMenuActionType
---@field actionVerbType MiniMenuActionVerbType
---@field categoryID integer
---@field component ui.Component
---@field config ObjType
---@field coordGridX integer
---@field coordGridZ integer
---@field cursorID integer
---@field entity PlayerEntity
---@field entries MiniMenuEntry[]
---@field entryCount integer
---@field extraText string
---@field fromMiniMap boolean
---@field fullText string
---@field iconSpriteIDs integer[]
---@field isOpen boolean
---@field mapElementID integer
---@field opIndex integer
---@field overrideText string
---@field stackIndex integer
---@field subjectHash integer
---@field subjectOnOtherLevel boolean
---@field subjectText string
---@field verbText string
MiniMenu = {}
---@param label string
---@param action function
---@param ... any
function MiniMenu:Add(label, action, ...) end
---@return boolean
function MiniMenu.IsOpen() end
---@param indexA integer
---@param indexB integer
function MiniMenu:Swap(indexA, indexB) end

---@enum MiniMenuActionType
MiniMenuActionType = {
    CANCEL = 1006,
    FACE_SQUARE = 60,
    IF_BUTTONT = 58,
    IF_BUTTONX1 = 57,
    IF_BUTTONX2 = 1007,
    OP_LOC1 = 3,
    OP_LOC2 = 4,
    OP_LOC3 = 5,
    OP_LOC4 = 6,
    OP_LOC5 = 1001,
    OP_LOC6 = 1002,
    OP_MAPELEMENT1 = 1008,
    OP_MAPELEMENT2 = 1009,
    OP_MAPELEMENT3 = 1010,
    OP_MAPELEMENT4 = 1011,
    OP_MAPELEMENT5 = 1012,
    OP_NPC1 = 9,
    OP_NPC1_LOWPRIORITY = 2009,
    OP_NPC2 = 10,
    OP_NPC2_LOWPRIORITY = 2010,
    OP_NPC3 = 11,
    OP_NPC3_LOWPRIORITY = 2011,
    OP_NPC4 = 12,
    OP_NPC4_LOWPRIORITY = 2012,
    OP_NPC5 = 13,
    OP_NPC5_LOWPRIORITY = 2013,
    OP_NPC6 = 1003,
    OP_NPC6_LOWPRIORITY = 3003,
    OP_OBJ1 = 18,
    OP_OBJ2 = 19,
    OP_OBJ3 = 20,
    OP_OBJ4 = 21,
    OP_OBJ5 = 22,
    OP_OBJ6 = 1004,
    OP_PLAYER1 = 44,
    OP_PLAYER10 = 53,
    OP_PLAYER10_LOWPRIORITY = 2053,
    OP_PLAYER1_LOWPRIORITY = 2044,
    OP_PLAYER2 = 45,
    OP_PLAYER2_LOWPRIORITY = 2045,
    OP_PLAYER3 = 46,
    OP_PLAYER3_LOWPRIORITY = 2046,
    OP_PLAYER4 = 47,
    OP_PLAYER4_LOWPRIORITY = 2047,
    OP_PLAYER5 = 48,
    OP_PLAYER5_LOWPRIORITY = 2048,
    OP_PLAYER6 = 49,
    OP_PLAYER6_LOWPRIORITY = 2049,
    OP_PLAYER7 = 50,
    OP_PLAYER7_LOWPRIORITY = 2050,
    OP_PLAYER8 = 51,
    OP_PLAYER8_LOWPRIORITY = 2051,
    OP_PLAYER9 = 52,
    OP_PLAYER9_LOWPRIORITY = 2052,
    PAUSE_BUTTON = 30,
    TGT_BUTTON = 25,
    TGT_GROUND = 59,
    TGT_LOC = 2,
    TGT_NPC = 8,
    TGT_OBJ = 17,
    TGT_PLAYER = 15,
    TGT_SELF = 16,
    WALK = 23,
    WIKI = 1005,
}

---@enum MiniMenuActionVerbType
MiniMenuActionVerbType = {
    ATTACK = 0,
    EXAMINE = 1,
    OP = 2,
    UNSPECIFIED = 3,
}

---@class MiniMenuEntry
MiniMenuEntry = {}

---@enum MiniMenuEntryType
MiniMenuEntryType = {
    INTERFACE = 1,
    LOC = 3,
    MAP = 9,
    MINIMENU = 6,
    NONE = 0,
    NPC = 4,
    OBJ = 2,
    OTHER = 5,
    PLAYER = 7,
    PLUGIN = 10,
    SELF = 8,
}

---@class NPC
NPC = {}
---@param opIndex integer
---@return CursorType?
function NPC:GetOpCursor(opIndex) end
---@param param ParamType
---@return any
function NPC:GetParamValue(param) end
---@param param ParamType
---@return boolean
function NPC:HasParam(param) end

---@class NPCEntity
---@field aabb AABB
---@field config NPCType
---@field configID integer
---@field coordGrid CoordGrid
---@field displayName string
---@field facing integer
---@field facingTarget integer
---@field isMultiNPC boolean
---@field isValid boolean
---@field parentConfig NPCType
---@field parentConfigID integer
---@field position Vector3
---@field route CoordGrid[]
---@field routeEnd CoordGrid?
---@field uid integer
NPCEntity = {}

---@class NPCList
NPCList = {}
---@return NPCEntity[]
function NPCList.All() end
---@param npcType NPCType
---@return NPCEntity[]
function NPCList.ByConfig(npcType) end
---@param npcTypeID integer
---@return NPCEntity[]
function NPCList.ByConfigID(npcTypeID) end
---@param coordGrid CoordGrid
---@param range integer
---@return NPCEntity[]
function NPCList.ByDistance(coordGrid, range) end
---@param name string
---@return NPCEntity[]
function NPCList.ByName(name) end
---@param npcType NPCType
---@return NPCEntity[]
function NPCList.ByParentConfig(npcType) end
---@param npcTypeID integer
---@return NPCEntity[]
function NPCList.ByParentConfigID(npcTypeID) end
---@param uid integer
---@return NPCEntity[]
function NPCList.ByUID(uid) end
---@param filterSet table
---@return NPCEntity[]
function NPCList.Filter(filterSet) end

---@class NPCType
---@field attackOpIndex integer
---@field attackOpPriority boolean
---@field backgroundSoundCrawl integer
---@field backgroundSoundDropoffRange integer
---@field backgroundSoundRange integer
---@field backgroundSoundReady integer
---@field backgroundSoundRun integer
---@field backgroundSoundVolume integer
---@field backgroundSoundWalk integer
---@field bas BaseAnimSetType
---@field castsShadows boolean
---@field configName string
---@field customBounding AABB?
---@field examineOpIndex integer
---@field fastPicking boolean
---@field firstUniqueOpIndex integer
---@field gridSize integer
---@field hasBackgroundSound boolean
---@field hasCustomBounding boolean
---@field id integer
---@field isActive boolean
---@field isAlwaysOnBottom boolean
---@field isAlwaysOnTop boolean
---@field isExamineOnly boolean
---@field isFamiliar boolean
---@field isMultiNPC boolean
---@field isOnMiniMap boolean
---@field mapElement MapElementType
---@field maxRange integer
---@field multiVar VarType
---@field name string
---@field opNames string[]
---@field overlayHeight integer
---@field params ParamType[]
---@field priorityOffset integer
---@field quests QuestType[]
---@field resize Vector3
---@field roughBounding integer
---@field turnSpeed integer
---@field typeName string
---@field visibleCombatLevel integer
---@field walkSmoothing boolean
---@field wanderRange integer
NPCType = {}

---@class Obj
Obj = {}
---@param opIndex integer
---@return CursorType?
function Obj:GetGroundOpCursor(opIndex) end
---@param opIndex integer
---@return CursorType?
function Obj:GetInterfaceOpCursor(opIndex) end
---@param param ParamType
---@return any
function Obj:GetParamValue(param) end
---@param param ParamType
---@return boolean
function Obj:HasParam(param) end

---@class ObjEntry
---@field config ObjType
---@field configID integer
---@field count integer
ObjEntry = {}

---@class ObjStackEntity
---@field aabb AABB
---@field coordGrid CoordGrid
---@field isValid boolean
---@field position Vector3
---@field stackSize integer
ObjStackEntity = {}
---@param index integer
---@return ObjEntry
function ObjStackEntity:GetEntry(index) end
---@param objType ObjType
---@return boolean
function ObjStackEntity:HasObj(objType) end
---@param objTypeID integer
---@return boolean
function ObjStackEntity:HasObjID(objTypeID) end

---@class ObjStackList
ObjStackList = {}
---@return ObjStackEntity[]
function ObjStackList.All() end
---@param objType ObjType
---@return ObjStackEntity[]
function ObjStackList.ByConfig(objType) end
---@param objTypeID integer
---@return ObjStackEntity[]
function ObjStackList.ByConfigID(objTypeID) end
---@param coordGrid CoordGrid
---@param range integer
---@return ObjStackEntity[]
function ObjStackList.ByDistance(coordGrid, range) end
---@param name string
---@return ObjStackEntity[]
function ObjStackList.ByName(name) end
---@param filterSet table
---@return ObjStackEntity[]
function ObjStackList.Filter(filterSet) end

---@enum ObjStackType
ObjStackType = {
    ALWAYS = 1,
    NEVER = 2,
    SOMETIMES = 0,
}

---@class ObjType
---@field category integer
---@field configName string
---@field cost integer
---@field groundOpNames string[]
---@field id integer
---@field interfaceOpNames string[]
---@field isMembers boolean
---@field isStockmarket boolean
---@field isTradeable boolean
---@field name string
---@field params ParamType[]
---@field quests QuestType[]
---@field stackCountAltObjs [integer, Obj][]
---@field stackType ObjStackType
---@field stockmarketBuyLimit integer
---@field teamID integer
---@field typeName string
ObjType = {}

---@class ParamType
---@field configName string
---@field defaultValue any
---@field id integer
---@field typeName string
---@field valueType ValueType
ParamType = {}

---@class Player
Player = {}
---@return integer
function Player.GetCombatLevel() end
---@return PlayerEntity
function Player.GetEntity() end
---@param skill SkillType
---@return integer
function Player.GetLevelCapped(skill) end
---@param skill SkillType
---@return integer
function Player.GetLevelGameplay(skill) end
---@param skill SkillType
---@return integer
function Player.GetLevelUncapped(skill) end
---@return integer
function Player.GetRunEnergy() end
---@return integer?
function Player.GetTrackingID() end
---@return integer
function Player.GetWeight() end
---@param skill SkillType
---@return integer
function Player.GetXPCapped(skill) end
---@param skill SkillType
---@return integer
function Player.GetXPUncapped(skill) end
---@return boolean
function Player.IsAvailable() end

---@class PlayerEntity
---@field aabb AABB
---@field coordGrid CoordGrid
---@field displayName string
---@field facing integer
---@field facingTarget integer
---@field isValid boolean
---@field position Vector3
---@field route CoordGrid[]
---@field routeEnd CoordGrid?
---@field uid integer
PlayerEntity = {}

---@class PlayerList
PlayerList = {}
---@return PlayerEntity[]
function PlayerList.All() end
---@param coordGrid CoordGrid
---@param range integer
---@return PlayerEntity[]
function PlayerList.ByDistance(coordGrid, range) end
---@param name string
---@return PlayerEntity[]
function PlayerList.ByName(name) end
---@param uid integer
---@return PlayerEntity[]
function PlayerList.ByUID(uid) end
---@param filterSet table
---@return PlayerEntity[]
function PlayerList.Filter(filterSet) end
---@return PlayerEntity
function PlayerList.Self() end

---@enum PostAnimMove
PostAnimMove = {
    ABORT_ANIMATION = 1,
    DEFAULT = 3,
    DELAY_MOVE = 0,
    MOVE_MERGE = 2,
}

---@enum PreAnimMove
PreAnimMove = {
    ABORT_ANIMATION = 3,
    DEFAULT = 4,
    DELAY_ANIMATION = 1,
    DELAY_MOVE = 0,
    MOVE_MERGE = 2,
}

---@class Quest
Quest = {}
---@param param ParamType
---@return any
function Quest:GetParamValue(param) end
---@param param ParamType
---@return boolean
function Quest:HasParam(param) end

---@enum QuestDifficulty
QuestDifficulty = {
    EXPERIENCED = 2,
    GRANDMASTER = 4,
    INTERMEDIATE = 1,
    MASTER = 3,
    MULTIDIFFICULTY = 5,
    NOVICE = 0,
}

---@enum QuestType
QuestType = {
    NORMAL = 0,
    SEASONAL = 1,
    TUTORIAL = 2,
}

---@enum RotationType
RotationType = {
    NINETY = 1,
    ONEEIGHTY = 2,
    TWOSEVENTY = 3,
    ZERO = 0,
}

---@class ScreenConvert
ScreenConvert = {}
---@param coordFine CoordFine
---@param heightAboveGround integer
---@return Vector2?
function ScreenConvert.CoordFineToScreen(coordFine, heightAboveGround) end
---@param coordGrid CoordGrid
---@param heightAboveGround integer
---@return Vector2?
function ScreenConvert.CoordGridToScreen(coordGrid, heightAboveGround) end
---@overload fun(position: Vector2, level: integer): CoordFine?
---@overload fun(x: integer, y: integer): CoordFine?
---@overload fun(x: integer, y: integer, level: integer): CoordFine?
---@param position Vector2
---@return CoordFine?
function ScreenConvert.ScreenToCoordFine(position) end
---@overload fun(position: Vector2, level: integer): CoordGrid?
---@overload fun(x: integer, y: integer): CoordGrid?
---@overload fun(x: integer, y: integer, level: integer): CoordGrid?
---@param position Vector2
---@return CoordGrid?
function ScreenConvert.ScreenToCoordGrid(position) end
---@param vec3 Vector3
---@return Vector2?
function ScreenConvert.Vector3ToScreen(vec3) end

---@class Seq
Seq = {}
---@param param ParamType
---@return any
function Seq:GetParamValue(param) end
---@param param ParamType
---@return boolean
function Seq:HasParam(param) end

---@class SeqType
---@field animDuplicateBehaviour AnimationDuplicateBehaviour
---@field configName string
---@field id integer
---@field length integer
---@field loop integer
---@field maxLoop integer
---@field postAnimMove PostAnimMove
---@field preAnimMove PreAnimMove
---@field priority integer
---@field replaceHeldLeft Obj
---@field replaceHeldRight Obj
---@field typeName string
SeqType = {}

---@class ShapeData
---@field lines integer[]
---@field positions Vector3[]
---@field rgba integer[]
---@field tris integer[]
ShapeData = {}
---@return string[]
function ShapeData.GetAllRegistered() end
---@param name string
---@return boolean
function ShapeData.IsRegistered(name) end
---@param name string
---@param shapeData ShapeData
---@return boolean
function ShapeData.Register(name, shapeData) end
---@param name string
---@return boolean
function ShapeData.Unregister(name) end
---@return ShapeData
function ShapeData.new() end

---@class ShapeEntity
---@field alignType ShapeEntityAlignType
---@field asBillboard boolean
---@field colour integer
---@field coordFine CoordFine
---@field coordGrid CoordGrid
---@field drawDistances [integer, integer]
---@field hasData boolean
---@field heightOffset number
---@field ignoreDepth boolean
---@field isValid boolean
---@field lineWidth number
---@field name string
---@field rotation number
---@field rotationSpeed number
---@field visible boolean
ShapeEntity = {}
---@return boolean
function ShapeEntity:Destroy() end
---@overload fun(self: ShapeEntity, nearDistance: number, farDistance: number)
---@param distance number
function ShapeEntity:SetDrawDistance(distance) end
---@param shapeData ShapeData
---@return boolean
function ShapeEntity:SetShapeData(shapeData) end
---@param shapeName string
---@return boolean
function ShapeEntity:SetShapeDataName(shapeName) end

---@enum ShapeEntityAlignType
ShapeEntityAlignType = {
    MODEL = 2,
    NONE = 0,
    OBJECT = 1,
}

---@class ShapeInstance
---@field asBillboard boolean
---@field colour integer
---@field hasData boolean
---@field ignoreDepth boolean
---@field isValid boolean
---@field lineWidth number
---@field name string
---@field rotation Vector3
---@field scale Vector3
---@field translation Vector3
---@field visible boolean
ShapeInstance = {}
---@return boolean
function ShapeInstance:Destroy() end
---@param shapeData ShapeData
---@return boolean
function ShapeInstance:SetShapeData(shapeData) end
---@param shapeName string
---@return boolean
function ShapeInstance:SetShapeDataName(shapeName) end

---@class ShapeList
ShapeList = {}
---@param name string
---@return ShapeEntity?
function ShapeList.CreateEntity(name) end
---@param name string
---@return ShapeInstance?
function ShapeList.CreateInstance(name) end
---@overload fun(name: string): boolean
---@param entity ShapeEntity
---@return boolean
function ShapeList.DestroyEntity(entity) end
---@overload fun(name: string): boolean
---@param instance ShapeInstance
---@return boolean
function ShapeList.DestroyInstance(instance) end
---@param settings table
function ShapeList.Draw(settings) end
---@param settings table
function ShapeList.DrawLine(settings) end
---@return ShapeEntity[]
function ShapeList.GetAllEntities() end
---@return ShapeInstance[]
function ShapeList.GetAllInstances() end
---@param name string
---@return ShapeInstance?
function ShapeList.GetEntity(name) end
---@param name string
---@return ShapeInstance?
function ShapeList.GetInstance(name) end

---@enum SkillType
SkillType = {
    AGILITY = 16,
    ARCHAEOLOGY = 27,
    ATTACK = 0,
    CONSTRUCTION = 22,
    COOKING = 7,
    CRAFTING = 12,
    DEFENCE = 1,
    DIVINATION = 25,
    DUNGEONEERING = 24,
    FARMING = 19,
    FIREMAKING = 11,
    FISHING = 10,
    FLETCHING = 9,
    HERBLORE = 15,
    HITPOINTS = 3,
    HUNTER = 21,
    INVENTION = 26,
    MAGIC = 6,
    MINING = 14,
    NECROMANCY = 28,
    PRAYER = 5,
    RANGED = 4,
    RUNECRAFTING = 20,
    SLAYER = 18,
    SMITHING = 13,
    STRENGTH = 2,
    SUMMONING = 23,
    THIEVING = 17,
    WOODCUTTING = 8,
}

---@class SpotAnimType
---@field configName string
---@field id integer
---@field seqID integer
---@field typeName string
SpotAnimType = {}

---@class Struct
Struct = {}
---@param param ParamType
---@return any
function Struct:GetParamValue(param) end
---@param param ParamType
---@return boolean
function Struct:HasParam(param) end

---@class StructType
---@field configName string
---@field id integer
---@field params ParamType[]
---@field typeName string
StructType = {}

---@enum ValueType
ValueType = {
    ACHIEVEMENT = 131,
    AREA = 16,
    BASEANIMSET = 44,
    BOOLEAN = 1,
    CATEGORY = 41,
    CHAR = 42,
    CHATCAT = 29,
    CHATPHRASE = 24,
    COMPONENT = 9,
    COORDGRID = 22,
    CURSOR = 5,
    CUTSCENE2D = 138,
    DBROW = 74,
    DBTABLE = 129,
    ENUM = 26,
    FONT = 25,
    HITMARK = 62,
    IDKIT = 10,
    INTEGER = 0,
    INV = 39,
    LOC = 30,
    LONG = 110,
    MAPELEMENT = 59,
    MATERIAL = 102,
    MODEL = 31,
    NPC = 32,
    NPC_UID = 38,
    OBJ = 33,
    OVERLAYINTERFACE = 99,
    PLAYER_UID = 34,
    QUEST = 3,
    SEQ = 6,
    SKILL = 17,
    SPOTANIM = 37,
    SPRITE = 23,
    STRING = 36,
    STRUCT = 73,
    SYNTH = 14,
    UNSUPPORTED = -1,
    VAR_INT = 209,
    VORBIS = 57,
}

---@class VarType
---@field baseVar VarType
---@field configName string
---@field id integer
---@field isVarBit boolean
---@field typeName string
---@field value any
---@field valueType ValueType
---@field varBitMask integer
VarType = {}

---@class World
World = {}
---@param level integer
---@param x integer
---@param z integer
---@param arg4 HeightOffsetType
---@return integer, boolean
function World.GetGroundHeight(level, x, z, arg4) end
---@return Rect?
function World.GetMapSquareBounds() end
---@return integer
function World.GetPing() end
---@return integer
function World.GetRebootTimer() end
---@param coord CoordGrid
---@return CoordGrid?
function World.GetRegionSourceForCoordGrid(coord) end
---@return boolean
function World.IsAvailable() end
---@return boolean
function World.IsMembers() end
---@return boolean
function World.IsRegion() end

---@class World.RemoveRoof
World.RemoveRoof = {}
---@overload fun(name: string, coordRangeMin: CoordGrid, coordRangeMax: CoordGrid)
---@param name string
---@param coord CoordGrid
function World.RemoveRoof.Add(name, coord) end
