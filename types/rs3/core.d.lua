---@meta

---@enum EntityType
EntityType = {
    COMBINED_LOCATION_SECTION = 12,
    LOCATION = 0,
    NPC = 1,
    OBJSTACK = 3,
    PLAYER = 2,
}

---@enum GameKey
GameKey = {
    A = 48,
    ALT = 86,
    APOSTROPHE = 58,
    B = 68,
    BACKSLASH = 74,
    BACKSPACE = 85,
    C = 66,
    CLEAR = 91,
    COMMA = 71,
    CONSOLE = 28,
    CONTROL = 82,
    D = 50,
    DELETE = 101,
    DOWN = 99,
    E = 34,
    END = 103,
    ENTER = 84,
    EQUALS = 27,
    ESCAPE = 13,
    F = 51,
    F1 = 1,
    F10 = 10,
    F11 = 11,
    F12 = 12,
    F2 = 2,
    F3 = 3,
    F4 = 4,
    F5 = 5,
    F6 = 6,
    F7 = 7,
    F8 = 8,
    F9 = 9,
    FULLSTOP = 72,
    G = 52,
    H = 53,
    HASH = 59,
    HOME = 102,
    I = 39,
    INSERT = 100,
    J = 54,
    K = 55,
    L = 56,
    LEFT = 96,
    LEFT_BRACKET = 42,
    M = 70,
    MINUS = 26,
    N = 69,
    NUMPAD_ADD = 87,
    NUMPAD_DIVIDE = 90,
    NUMPAD_MULTIPLY = 89,
    NUMPAD_SUBTRACT = 88,
    O = 40,
    P = 41,
    PAGE_DOWN = 105,
    PAGE_UP = 104,
    Q = 32,
    R = 35,
    RIGHT = 97,
    RIGHT_BRACKET = 43,
    S = 49,
    SEMICOLON = 57,
    SHIFT = 81,
    SLASH = 73,
    SPACE = 83,
    T = 36,
    TAB = 80,
    U = 38,
    UP = 98,
    V = 67,
    W = 33,
    X = 65,
    Y = 37,
    Z = 64,
    _0 = 25,
    _1 = 16,
    _2 = 17,
    _3 = 18,
    _4 = 19,
    _5 = 20,
    _6 = 21,
    _7 = 22,
    _8 = 23,
    _9 = 24,
}

---@enum GameState
GameState = {
    ACCOUNT_CREATE = 23,
    BOOT = 0,
    GAME = 30,
    INIT = 1,
    LOADING = 40,
    LOBBY = 20,
    LOGINSCREEN = 10,
    RECONNECTING = 35,
    RECONNECTING_FULL = 36,
    SWITCH_WORLD = 37,
}

---@class HTTPRequest
---@field baseURL PluginURL
---@field cancelled boolean
---@field completionCallback function
---@field data string
---@field downloadTotalBytes integer
---@field downloadedBytes integer
---@field errorCode integer
---@field errorInfo string
---@field failed boolean
---@field finished boolean
---@field header string
---@field path string?
---@field progress number?
---@field progressCallback function
---@field responseCode integer
---@field successful boolean
---@field timedOut boolean
---@field url string
HTTPRequest = {}
---@param key string
---@param value string
function HTTPRequest:AddHeader(key, value) end
function HTTPRequest:Cancel() end
---@param completionCallback function
---@param progressCallback function
function HTTPRequest:Get(completionCallback, progressCallback) end
---@param data string
---@param completionCallback function
---@param progressCallback function
function HTTPRequest:Post(data, completionCallback, progressCallback) end
---@param baseURL PluginURL
---@param path string?
---@return HTTPRequest
function HTTPRequest.new(baseURL, path) end

---@class Keyboard
Keyboard = {}
---@return GameKey[]
function Keyboard.GetGameKeysDown() end
---@return boolean
function Keyboard.IsAltDown() end
---@return boolean
function Keyboard.IsAvailable() end
---@return boolean
function Keyboard.IsBlocked() end
---@return boolean
function Keyboard.IsControlDown() end
---@param key GameKey
---@return boolean
function Keyboard.IsGameKeyDown(key) end
---@return boolean
function Keyboard.IsMetaDown() end
---@return boolean
function Keyboard.IsShiftDown() end

---@enum ModifierKey
ModifierKey = {
    ALT = 4,
    ANY = 7,
    ANY_INC_META = 15,
    CONTROL = 2,
    META = 8,
    SHIFT = 1,
}

---@class Mouse
Mouse = {}
---@return Vector2?
function Mouse.GetPosition() end
---@return integer?
function Mouse.GetX() end
---@return integer?
function Mouse.GetY() end
---@return boolean
function Mouse.IsAvailable() end

---@class PersistentDB
PersistentDB = {}
---@param key string
---@return boolean
function PersistentDB:CheckExists(key) end
---@param key string
---@param type PersistentDBType
---@return boolean
function PersistentDB:CheckExistsTyped(key, type) end
---@return boolean
function PersistentDB:Clear() end
---@param key string
---@return boolean
function PersistentDB:Delete(key) end
---@param key string
---@return boolean|integer|number|string|table?
function PersistentDB:Get(key) end
---@param key string
---@return boolean?
function PersistentDB:GetBool(key) end
---@param key string
---@return number?
function PersistentDB:GetFloat(key) end
---@param key string
---@return integer?
function PersistentDB:GetInt(key) end
---@param key string
---@return string?
function PersistentDB:GetString(key) end
---@param key string
---@return table?
function PersistentDB:GetStructuredData(key) end
---@param callback function|integer|number|string|any
---@return integer
function PersistentDB:IterateEntries(callback) end
---@param key string
---@param value boolean|integer|number|string|table
---@return boolean
function PersistentDB:Set(key, value) end
---@param key string
---@param value boolean
---@return boolean
function PersistentDB:SetBool(key, value) end
---@param key string
---@param value number
---@return boolean
function PersistentDB:SetFloat(key, value) end
---@param key string
---@param value integer
---@return boolean
function PersistentDB:SetInt(key, value) end
---@param key string
---@param value string
---@return boolean
function PersistentDB:SetString(key, value) end
---@param key string
---@param value table
---@return boolean
function PersistentDB:SetStructuredData(key, value) end

---@enum PersistentDBType
PersistentDBType = {
    BOOL = 0,
    FLOAT = 2,
    INT = 1,
    STRING = 3,
    STRUCTURED_DATA = 4,
}

---@class Plugin
---@field inUse boolean
---@field loaded boolean
---@field path string
Plugin = {}
---@param permission PluginPermissions
---@return boolean
function Plugin.HasPermission(permission) end

---@class PluginPermissions
---@field chatAccess any
---@field httpAccess any
---@field trackingAccess any
PluginPermissions = {}

---@class PluginResource
PluginResource = {}
---@return PluginResourceLoadResult
function PluginResource:Load() end
function PluginResource:Unload() end

---@class PluginResourceLoadResult
---@field errorConstruction any
---@field errorDecode any
---@field errorExceedsLimits any
---@field errorFilesystem any
---@field success any
PluginResourceLoadResult = {}

---@class RS3ConfigRegistry<T>
---@field FromID fun(id: integer): T?
---@field [string] T
RS3ConfigRegistry = {}

---@class RuntimeSprite
RuntimeSprite = {}

---@enum SystemKey
SystemKey = {
    A = 65,
    ALT_LEFT = 18,
    APOSTROPHE = 192,
    B = 66,
    BACKSLASH = 220,
    BACKSPACE = 8,
    C = 67,
    CLEAR = 12,
    COMMA = 188,
    CONSOLE = 7331,
    CONTROL_LEFT = 17,
    D = 68,
    DELETE = 46,
    DOWN = 40,
    E = 69,
    END = 35,
    ENTER = 13,
    EQUALS = 187,
    ESCAPE = 27,
    F = 70,
    F1 = 112,
    F10 = 121,
    F11 = 122,
    F12 = 123,
    F2 = 113,
    F3 = 114,
    F4 = 115,
    F5 = 116,
    F6 = 117,
    F7 = 118,
    F8 = 119,
    F9 = 120,
    FULLSTOP = 190,
    G = 71,
    H = 72,
    HASH = 222,
    HOME = 36,
    I = 73,
    INSERT = 45,
    J = 74,
    K = 75,
    L = 76,
    LEFT = 37,
    LEFT_BRACKET = 219,
    M = 77,
    MINUS = 189,
    N = 78,
    NUMPAD_ADD = 107,
    NUMPAD_DECIMAL = 110,
    NUMPAD_DIVIDE = 111,
    NUMPAD_MULTIPLY = 106,
    NUMPAD_SUBTRACT = 109,
    O = 79,
    P = 80,
    PAGE_DOWN = 34,
    PAGE_UP = 33,
    Q = 81,
    R = 82,
    RETURN = 13,
    RIGHT = 39,
    RIGHT_BRACKET = 221,
    S = 83,
    SEMICOLON = 186,
    SHIFT_LEFT = 16,
    SLASH = 191,
    SPACE = 32,
    T = 84,
    TAB = 9,
    U = 85,
    UP = 38,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
    _0 = 48,
    _1 = 49,
    _2 = 50,
    _3 = 51,
    _4 = 52,
    _5 = 53,
    _6 = 54,
    _7 = 55,
    _8 = 56,
    _9 = 57,
}

---@class audio
audio = {}
---@overload fun(builtinResourceID: integer, params: audio.SoundPlaybackParams?): audio.SoundInstance?
---@param resource PluginAudioResource
---@param params audio.SoundPlaybackParams?
---@return audio.SoundInstance?
function audio.Play(resource, params) end
---@param soundInstanceID integer
function audio.Stop(soundInstanceID) end
---@overload fun(builtinResourceID: integer)
---@param resource PluginAudioResource
function audio.StopSoundsUsingResource(resource) end

---@enum audio.AudioBus
audio.AudioBus = {
    AMBIENT = 4,
    DIALOG_SUB = 8,
    GENERAL_ANIMATION_SUB = 12,
    LOCATIONS_SUB = 13,
    LOCATION_ANIMATION_SUB = 11,
    LOCATION_GENERIC_SUB = 15,
    LOCATION_RANDOM_SUB = 14,
    MASTER = 0,
    MUSIC = 2,
    MUSIC_LOGIC = 3,
    MUSIC_SUB = 7,
    NPC_ANIMATION_SUB = 10,
    PLAYER_ANIMATION_SUB = 9,
    SFX = 1,
    SFX_SUB = 6,
    VOICEOVER = 5,
}

---@enum audio.EmitterShape
audio.EmitterShape = {
    BOX = 1,
    BOX_NO_PANNING = 3,
    NONE = 4,
    SPHERE = 0,
    SPHERE_NO_PANNING = 2,
}

---@class audio.Play
audio.Play = {}

---@class audio.SoundInstance
---@field id integer
---@field isPaused boolean
audio.SoundInstance = {}
function audio.SoundInstance:Pause() end
function audio.SoundInstance:Resume() end
---@param ticksDelay integer?
function audio.SoundInstance:Start(ticksDelay) end
function audio.SoundInstance:Stop() end

---@class audio.SoundPlaybackParams
audio.SoundPlaybackParams = {}
---@return audio.SoundPlaybackParams
function audio.SoundPlaybackParams.new() end

---@enum audio.SoundType
audio.SoundType = {
    ENTITY = 0,
    ENTITY_ANIMATION = 5,
    ENTITY_MOVEMENT = 11,
    GENERAL_ANIMATION = 3,
    INTERFACE_ANIMATION = 12,
    INVALID = 255,
    JINGLE = 10,
    LOCATION = 1,
    LOCATION_ANIMATION = 4,
    LOCATION_RANDOM = 2,
    MUSIC = 9,
    SCRIPT = 7,
    SERVER_TRIGGERED = 8,
    SPOT_ANIMATION = 6,
}

---@class audio.Stop
audio.Stop = {}

---@class audio.StopSoundsUsingResource
audio.StopSoundsUsingResource = {}

---@class config
---@field Achievement RS3ConfigRegistry<AchievementType>
---@field BaseAnimSet RS3ConfigRegistry<BaseAnimSetType>
---@field Cursor RS3ConfigRegistry<CursorType>
---@field DBRow RS3ConfigRegistry<DBRowType>
---@field DBTable RS3ConfigRegistry<DBTableType>
---@field Enum RS3ConfigRegistry<EnumType>
---@field Font RS3ConfigRegistry<FontType>
---@field Headbar RS3ConfigRegistry<HeadbarType>
---@field Hitmark RS3ConfigRegistry<HitmarkType>
---@field Inv RS3ConfigRegistry<InvType>
---@field Loc RS3ConfigRegistry<LocType>
---@field MapElement RS3ConfigRegistry<MapElementType>
---@field NPC RS3ConfigRegistry<NPCType>
---@field Obj RS3ConfigRegistry<ObjType>
---@field Param RS3ConfigRegistry<ParamType>
---@field Quest RS3ConfigRegistry<QuestType>
---@field Seq RS3ConfigRegistry<SeqType>
---@field SpotAnim RS3ConfigRegistry<SpotAnimType>
---@field Struct RS3ConfigRegistry<StructType>
---@field Var RS3ConfigRegistry<VarType>
config = {}

---@class id
---@field Achievement table<string, integer>
---@field BaseAnimSet table<string, integer>
---@field Cursor table<string, integer>
---@field DBRow table<string, integer>
---@field DBTable table<string, integer>
---@field Enum table<string, integer>
---@field Font table<string, integer>
---@field Headbar table<string, integer>
---@field Hitmark table<string, integer>
---@field Inv table<string, integer>
---@field Loc table<string, integer>
---@field MapElement table<string, integer>
---@field NPC table<string, integer>
---@field Obj table<string, integer>
---@field Param table<string, integer>
---@field Quest table<string, integer>
---@field Seq table<string, integer>
---@field SpotAnim table<string, integer>
---@field Struct table<string, integer>
---@field Var table<string, integer>
id = {}

---@class var
---@field VarClan table<string, VarType>
---@field VarClanSettings table<string, VarType>
---@field VarClient table<string, VarType>
---@field VarNPC table<string, VarType>
---@field VarObj table<string, VarType>
---@field VarPlayer table<string, VarType>
---@field VarPlayerGroup table<string, VarType>
var = {}
