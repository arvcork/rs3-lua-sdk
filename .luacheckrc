std = "lua54"
max_line_length = 110
unused_args = false
globals = {
    "Event", "log", "to_string", "ExecuteConsoleCommand", "PluginDependencyUpdate",
    "Inventory", "Player", "World", "Camera", "Chat", "GrandExchange", "MiniMenu",
    "ScreenConvert", "ShapeList", "NPCList", "PlayerList", "LocList", "ObjStackList",
    "Plugin", "PersistentDB", "HTTPRequest", "Keyboard", "Mouse", "Audio",
    "config", "var", "id", "ui", "game", "SkillType", "GameKey", "SystemKey",
    "CoordGrid", "CoordFine", "Vector2", "Vector3", "Vector4", "Quaternion",
    "Matrix33", "Rect", "AABB"
}
files["tests/**"].std = "+busted"

