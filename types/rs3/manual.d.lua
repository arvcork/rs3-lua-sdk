---@meta

---@class InvTypeProxy
InvTypeProxy = {}

---@class PluginURL

---@class PluginAudioResource

---@class ui.LabelData


---@class RS3ClientOption
---@field hasLabels boolean
---@field isToggle boolean
---@field isModifiable boolean
---@field setting integer
---@field min integer
---@field max integer
---@field minMaxRange [integer, integer]
local RS3ClientOption = {}

---@param setting integer
---@return boolean
function RS3ClientOption:Set(setting) end

---@param setting integer
---@return boolean
function RS3ClientOption:CheckIsValidSetting(setting) end

---@param setting integer
---@return string?
function RS3ClientOption:GetLabel(setting) end

---@class RS3GameOptions
---@field [string] RS3ClientOption

---@class RS3GameNamespace
---@field options RS3GameOptions
game = {}

