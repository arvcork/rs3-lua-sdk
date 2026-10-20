---@meta

---@class ui
ui = {}

---@class ui.AlignMode
---@field BOTTOMRIGHT any
---@field CENTRE any
---@field JUSTIFY any
---@field TOPLEFT any
ui.AlignMode = {}

---@class ui.AspectRatioMode
---@field NO_SCALING any
---@field SCALE_HEIGHT any
---@field SCALE_WIDTH any
ui.AspectRatioMode = {}

---@class ui.Button : ui.Component
---@field associatedObjectID integer
---@field associatedObjectQuantity integer
---@field canToggle boolean
---@field contentMargin ui.Margin
---@field isToggled boolean
---@field label string
---@field mode ui.TriggerMode
---@field showAssociatedObjectSprite boolean
---@field showAssociatedObjectText boolean
---@field sprite ui.SpriteData
---@field text ui.TextData
ui.Button = {}
---@param objectID integer
---@param quantity integer?
function ui.Button:SetAssociatedObject(objectID, quantity) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Button
function ui.Button.new(parent, categoryID, dynamicID) end

---@class ui.Canvas : ui.Component
---@field numElements integer
ui.Canvas = {}
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, startColour: Vector4, endColour: Vector4)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param startColourRGBA integer
---@param endColourRGBA integer
function ui.Canvas:AddGradientH(x, y, width, height, startColourRGBA, endColourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, startColour: Vector4, endColour: Vector4)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param startColourRGBA integer
---@param endColourRGBA integer
function ui.Canvas:AddGradientV(x, y, width, height, startColourRGBA, endColourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, endX: integer, endY: integer, thickness: number, colour: Vector4)
---@param x integer
---@param y integer
---@param endX integer
---@param endY integer
---@param thickness number
---@param colourRGBA integer
function ui.Canvas:AddLine(x, y, endX, endY, thickness, colourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, thickness: number, colour: Vector4)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param thickness number
---@param colourRGBA integer
function ui.Canvas:AddOutline(x, y, width, height, thickness, colourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, colour: Vector4)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param colourRGBA integer
function ui.Canvas:AddRectangle(x, y, width, height, colourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, spriteID: integer, uvs: Rect, colourRGBA: integer)
---@overload fun(self: ui.Canvas, x: integer, y: integer, width: integer, height: integer, spriteID: integer, uvs: Rect, spriteConfig: ui.SpriteDataConfig)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param spriteID integer
---@param colourRGBA integer
function ui.Canvas:AddSprite(x, y, width, height, spriteID, colourRGBA) end
---@overload fun(self: ui.Canvas, x: integer, y: integer, text: string, fontID: integer, colourRGBA: integer)
---@overload fun(self: ui.Canvas, x: integer, y: integer, text: string, fontID: integer, colour: Vector4)
---@overload fun(self: ui.Canvas, x: integer, y: integer, areaWidth: integer, areaHeight: integer, text: string, textConfig: ui.TextDataConfig)
---@param x integer
---@param y integer
---@param text string
---@param textConfig ui.TextDataConfig
function ui.Canvas:AddText(x, y, text, textConfig) end
---@overload fun(self: ui.Canvas, p0X: integer, p0Y: integer, p1X: integer, p1Y: integer, p2X: integer, p2Y: integer, colour: Vector4)
---@param p0X integer
---@param p0Y integer
---@param p1X integer
---@param p1Y integer
---@param p2X integer
---@param p2Y integer
---@param colourRGBA integer
function ui.Canvas:AddTriangle(p0X, p0Y, p1X, p1Y, p2X, p2Y, colourRGBA) end
function ui.Canvas:Clear() end
function ui.Canvas:Undo() end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Canvas
function ui.Canvas.new(parent, categoryID, dynamicID) end

---@class ui.Carousel : ui.Component
---@field backgroundSprite ui.SpriteData
---@field buttonHeight integer
---@field buttonOffset integer
---@field buttonSprite ui.SpriteData
---@field buttonWidth integer
---@field contentMargin ui.Margin
---@field entryText ui.TextData
---@field selectedID integer
ui.Carousel = {}
---@overload fun(self: ui.Carousel, id: integer, iconSpriteID: integer): boolean
---@param id integer
---@param label string
---@return boolean
function ui.Carousel:Add(id, label) end
function ui.Carousel:Clear() end
---@param id integer
---@return boolean
function ui.Carousel:GetEntryEnabled(id) end
---@param id integer
---@return boolean
function ui.Carousel:HasEntry(id) end
---@param id integer
---@param enabled boolean
---@return boolean
function ui.Carousel:SetEntryEnabled(id, enabled) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Carousel
function ui.Carousel.new(parent, categoryID, dynamicID) end

---@class ui.CarouselButtonDisplayMode
---@field SIDES any
ui.CarouselButtonDisplayMode = {}

---@class ui.Check : ui.Component
---@field alignment ui.CheckAlignMode
---@field buttonSize integer
---@field label string
---@field sprite ui.SpriteData
---@field text ui.TextData
---@field value boolean
ui.Check = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Check
function ui.Check.new(parent, categoryID, dynamicID) end

---@class ui.CheckAlignMode
---@field INLINE any
---@field INLINE_INVERTED any
---@field LEFT any
---@field RIGHT any
ui.CheckAlignMode = {}

---@class ui.ComboField : ui.Component
---@field buttonSprite ui.SpriteData
---@field caretColour Vector4
---@field caretRGBA integer
---@field contentMargin ui.Margin
---@field disabledForegroundColour Vector4
---@field disabledForegroundRGBA integer
---@field dropdownMaxVisibleEntries integer
---@field entries any[]
---@field entryHeight integer
---@field entrySprite ui.SpriteData
---@field entryText ui.TextData
---@field errorCaretColour Vector4
---@field errorCaretRGBA integer
---@field hasSelection boolean
---@field headerMargin ui.Margin
---@field headerSprite ui.SpriteData
---@field id integer
---@field mouseoverBackgroundColour Vector4
---@field mouseoverBackgroundRGBA integer
---@field mouseoverForegroundColour Vector4
---@field mouseoverForegroundRGBA integer
---@field numEntries integer
---@field scrollbar ui.ScrollBar
---@field selectable boolean
---@field selectedBackgroundColour Vector4
---@field selectedBackgroundRGBA integer
---@field selectedForegroundColour Vector4
---@field selectedForegroundRGBA integer
---@field selectedID integer
---@field selectedLabel string
---@field selectionHighlightColour Vector4
---@field selectionHighlightRGBA integer
---@field text string
ui.ComboField = {}
---@param label string
---@param id integer
---@return boolean
function ui.ComboField:Add(label, id) end
function ui.ComboField:Clear() end
---@param id integer
---@return boolean
function ui.ComboField:HasEntry(id) end
---@param id integer
---@return boolean
function ui.ComboField:Remove(id) end
---@param id integer
---@param triggerEvents boolean?
---@return boolean
function ui.ComboField:Select(id, triggerEvents) end
---@overload fun(self: ui.ComboField, entriesMap: table<string, integer>, selectedID: integer?): boolean
---@param entries string[]
---@param selectedID integer?
---@return boolean
function ui.ComboField:SetEntries(entries, selectedID) end
function ui.ComboField:UnselectAll() end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.ComboField
function ui.ComboField.new(parent, categoryID, dynamicID) end

---@class ui.Component
---@field alpha number
---@field aspectRatioHeight integer
---@field aspectRatioMode ui.AspectRatioMode
---@field aspectRatioProportion number
---@field aspectRatioWidth integer
---@field categoryID integer
---@field clickthrough boolean
---@field colour Vector4
---@field cursorConfig ui.ComponentCursorConfig
---@field dragConfig ui.ComponentDragConfig
---@field dynamicID integer
---@field enabled boolean
---@field height integer
---@field hidden boolean
---@field interfaceID integer
---@field isClicked boolean
---@field isMouseOver boolean
---@field isSafeAreaRelative boolean
---@field opConfig ui.ComponentOpConfig
---@field paramsConfig ui.ComponentParamsConfig
---@field parent ui.Component?
---@field parentInterface ui.Interface
---@field parentStatic ui.Component?
---@field pinchConfig ui.ComponentPinchConfig
---@field position ui.Pos
---@field rgb integer
---@field rgba integer
---@field size ui.Size
---@field staticID integer
---@field stylesheetID integer
---@field swipeConfig ui.ComponentSwipeConfig
---@field type ui.ComponentType
---@field visible boolean
---@field visibleGlobal boolean
---@field width integer
---@field x integer
---@field xyGlobal Vector2
---@field xyLocal Vector2
---@field y integer
ui.Component = {}
function ui.Component:Destroy() end
function ui.Component:MoveToBack() end
function ui.Component:MoveToFront() end
---@param widthRatio integer
---@param heightRatio integer
---@param mode ui.AspectRatioMode
function ui.Component:SetAspectRatio(widthRatio, heightRatio, mode) end
---@param y integer
---@param parentPercentageY number?
function ui.Component:SetHeight(y, parentPercentageY) end
---@param x integer
---@param y integer
---@param parentPercentageX number?
---@param parentPercentageY number?
---@param selfPercentageX number?
---@param selfPercentageY number?
function ui.Component:SetPos(x, y, parentPercentageX, parentPercentageY, selfPercentageX, selfPercentageY) end
---@param x integer
---@param y integer
---@param parentPercentageX number?
---@param parentPercentageY number?
function ui.Component:SetSize(x, y, parentPercentageX, parentPercentageY) end
---@param x integer
---@param parentPercentageX number?
function ui.Component:SetWidth(x, parentPercentageX) end
---@param x integer
---@param parentPercentageX number?
---@param selfPercentageX number?
function ui.Component:SetX(x, parentPercentageX, selfPercentageX) end
---@param y integer
---@param parentPercentageY number?
---@param selfPercentageY number?
function ui.Component:SetY(y, parentPercentageY, selfPercentageY) end
---@overload fun(self: ui.Component, hook: ui.Hook, id: string, callback: fun(...): boolean?)
---@param hook ui.Hook
---@param callback fun(...): boolean?
function ui.Component:Subscribe(hook, callback) end
---@overload fun(self: ui.Component, hook: ui.Hook, id: string)
---@param hook ui.Hook
function ui.Component:Unsubscribe(hook) end
---@param hook ui.Hook
function ui.Component:UnsubscribeAll(hook) end
function ui.Component:UpdateLayout() end

---@class ui.ComponentCollection : ui.Component
---@field scrollHeight number
---@field scrollWidth number
---@field scrollX number
---@field scrollY number
---@field scrollable boolean
ui.ComponentCollection = {}
---@param categoryID integer
---@param dynamicID integer
---@return boolean
function ui.ComponentCollection:Delete(categoryID, dynamicID) end
function ui.ComponentCollection:DeleteAll() end
---@overload fun(self: ui.ComponentCollection, categoryID: integer, dynamicID: integer): ui.Component?
---@param staticID integer
---@return ui.Component?
function ui.ComponentCollection:GetChild(staticID) end
---@param callback fun(component: ui.Component, visible: boolean): boolean
function ui.ComponentCollection:IterateDynamicComponents(callback) end
---@param callback fun(component: ui.Component, visible: boolean): boolean
function ui.ComponentCollection:IterateStaticComponents(callback) end
---@param x integer
---@param y integer
function ui.ComponentCollection:SetScrollPos(x, y) end
---@param width integer
---@param height integer
function ui.ComponentCollection:SetScrollSize(width, height) end

---@class ui.ComponentCursorConfig
---@field mouseOverCursor integer
---@field targetInvalidCursor integer
---@field targetValidCursor integer
ui.ComponentCursorConfig = {}

---@class ui.ComponentDragConfig
---@field deadZone integer
---@field dragDelayTicks integer
---@field draggedComponent ui.Component
---@field renderBehaviour ui.DragRenderBehaviour
ui.ComponentDragConfig = {}

---@class ui.ComponentOpConfig
---@field numOpCursors integer
---@field numOpNames integer
---@field opBaseName string
---@field opCursors integer[]
---@field opNames string[]
---@field opWikiText string
---@field pauseText string
---@field targetOpCursor integer
---@field targetOpVerb string
ui.ComponentOpConfig = {}
function ui.ComponentOpConfig:ClearHiddenOps() end
function ui.ComponentOpConfig:ClearHighPriorityOps() end
function ui.ComponentOpConfig:ClearOpCursors() end
function ui.ComponentOpConfig:ClearOpNames() end
---@param opIndex integer
---@return integer
function ui.ComponentOpConfig:GetOpCursor(opIndex) end
---@param opIndex integer
---@return boolean
function ui.ComponentOpConfig:GetOpIDHidden(opIndex) end
---@param opIndex integer
---@return boolean
function ui.ComponentOpConfig:GetOpIDHighPriority(opIndex) end
---@param opIndex integer
---@return string
function ui.ComponentOpConfig:GetOpName(opIndex) end
---@return ui.OpNameFilter
function ui.ComponentOpConfig:GetOpNameHidden() end
---@return ui.OpNameFilter
function ui.ComponentOpConfig:GetOpNameHighPriority() end
---@return boolean
function ui.ComponentOpConfig:HasHiddenTests() end
---@return boolean
function ui.ComponentOpConfig:HasHighPriorityTests() end
---@param opIndex integer
---@param cursorID integer
function ui.ComponentOpConfig:SetOpCursor(opIndex, cursorID) end
---@param opIndex integer
---@param hidden boolean
function ui.ComponentOpConfig:SetOpIDHidden(opIndex, hidden) end
---@param opIndex integer
---@param highPriority boolean
function ui.ComponentOpConfig:SetOpIDHighPriority(opIndex, highPriority) end
---@param filter ui.OpNameFilter
function ui.ComponentOpConfig:SetOpNameHidden(filter) end
---@param filter ui.OpNameFilter
function ui.ComponentOpConfig:SetOpNameHighPriority(filter) end
---@param opIndex integer
---@return boolean
function ui.ComponentOpConfig:TestOpIsHidden(opIndex) end
---@param opIndex integer
---@return boolean
function ui.ComponentOpConfig:TestOpIsHighPriority(opIndex) end

---@class ui.ComponentParamsConfig
---@field paramID integer
---@field valid boolean
ui.ComponentParamsConfig = {}
---@param paramID integer
---@return boolean
function ui.ComponentParamsConfig:CheckExists(paramID) end
---@param paramID integer
---@return integer?|string?
function ui.ComponentParamsConfig:Get(paramID) end

---@class ui.ComponentPinchConfig
---@field directionMask integer
---@field threshold integer
ui.ComponentPinchConfig = {}

---@class ui.ComponentSwipeConfig
---@field deadZoneHorizontal integer
---@field deadZoneVertical integer
---@field deceleration integer
---@field directionMask integer
---@field stopExponent integer
ui.ComponentSwipeConfig = {}
---@param horizontal integer
---@param vertical integer
function ui.ComponentSwipeConfig:SetDeadZone(horizontal, vertical) end

---@class ui.ComponentType
---@field BUTTON any
---@field CANVAS any
---@field CAROUSEL any
---@field CHECK any
---@field COMBO any
---@field CUTSCENE_LAYER any
---@field GRID any
---@field GROUP_BOX any
---@field INPUTFIELD any
---@field LABEL any
---@field LAYER any
---@field LINE any
---@field LIST any
---@field MODEL any
---@field MODEL_GROUP any
---@field PAGED_CAROUSEL any
---@field PAGED_LAYER any
---@field PAGED_LAYER_HEADER any
---@field PANEL any
---@field RADIAL_PROGRESS_OVERLAY any
---@field RADIO_GROUP any
---@field RECTANGLE any
---@field SLIDER any
---@field SPRITE any
ui.ComponentType = {}

---@class ui.CutsceneLayer : ui.ComponentCollection
ui.CutsceneLayer = {}

---@class ui.CutscenePlaybackEndReason
---@field CANCELLED any
---@field FINISHED any
---@field INTERFACE_CLOSED any
---@field INTERRUPTED any
ui.CutscenePlaybackEndReason = {}

---@class ui.DragRenderBehaviour
---@field INVISIBLE any
---@field OPAQUE any
---@field OPAQUE_OVERLAY any
---@field TRANSPARENT_OVERLAY any
ui.DragRenderBehaviour = {}

---@class ui.Grid : ui.ComponentCollection
---@field cellHeight integer
---@field cellWidth integer
---@field columns integer
---@field hasFixedCellSizes boolean
---@field rows integer
---@field spacing integer
ui.Grid = {}
---@param width integer
---@param height integer
function ui.Grid:SetCellSize(width, height) end
---@param columns integer
---@param rows integer
function ui.Grid:SetColumnRows(columns, rows) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Grid
function ui.Grid.new(parent, categoryID, dynamicID) end

---@class ui.GroupBox : ui.ComponentCollection
---@field contentBackgroundSprite ui.SpriteData
---@field contentMargin ui.Margin
---@field headerAlignment ui.GroupBoxHeaderAlignMode
---@field headerBackgroundSprite ui.SpriteData
---@field headerHeight integer
---@field headerOffsetX integer
---@field headerOffsetY integer
---@field headerText ui.LabelData
---@field headerWidth integer
ui.GroupBox = {}
---@param width integer
---@param height integer
---@param offsetX integer
---@param offsetY integer
---@param alignment ui.GroupBoxHeaderAlignMode
function ui.GroupBox:SetHeaderLayout(width, height, offsetX, offsetY, alignment) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.GroupBox
function ui.GroupBox.new(parent, categoryID, dynamicID) end

---@class ui.GroupBoxHeaderAlignMode
---@field CENTRE any
---@field LEFT any
---@field RIGHT any
ui.GroupBoxHeaderAlignMode = {}

---@class ui.Hook
---@field ONBUTTONPRESSED any
---@field ONCLICK any
---@field ONCONTENTCHANGED any
---@field ONSELECTIONCHANGED any
ui.Hook = {}

---@class ui.InputField : ui.Component
---@field caretColour Vector4
---@field caretRGBA integer
---@field containerSprite ui.SpriteData
---@field content string
---@field contentMargin ui.Margin
---@field contentQuantity integer?
---@field emptyText string
---@field emptyTextColour Vector4
---@field emptyTextRGBA integer
---@field errorCaretColour Vector4
---@field errorCaretRGBA integer
---@field filterMode ui.InputFieldFilterMode
---@field inputMode ui.InputFieldKeyHandlingMode
---@field maxLength integer
---@field scrollbar ui.ScrollBar
---@field selectionHighlightColour Vector4
---@field selectionHighlightRGBA integer
---@field text ui.TextData
---@field visibility ui.TextContentVisibilityMode
ui.InputField = {}
---@param visibility ui.TextContentVisibilityMode
---@param filter ui.InputFieldFilterMode
---@param maxLength integer
function ui.InputField:Setup(visibility, filter, maxLength) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.InputField
function ui.InputField.new(parent, categoryID, dynamicID) end

---@class ui.InputFieldActionResult
---@field CONTENT_CHANGE any
---@field ERROR any
---@field NONE any
---@field SUBMIT any
---@field SUBMIT_ON_ESCAPE any
---@field SUBMIT_ON_FOCUS_LOSS any
ui.InputFieldActionResult = {}

---@class ui.InputFieldFilterMode
---@field ALPHANUMERIC any
---@field NONE any
---@field NUMBERS_AS_TEXT any
---@field NUMERIC any
---@field QUANTITY any
ui.InputFieldFilterMode = {}

---@class ui.InputFieldKeyHandlingMode
---@field CHAT any
---@field DEFAULT any
ui.InputFieldKeyHandlingMode = {}

---@class ui.Interface
---@field clientOnly boolean
---@field id integer
ui.Interface = {}
---@overload fun(self: ui.Interface, interfaceID: integer, staticID: integer, categoryID: integer, dynamicID: integer): ui.Component?
---@param interfaceID integer
---@param staticID integer
---@return ui.Component?
function ui.Interface:GetComponent(interfaceID, staticID) end

---@class ui.Interfaces
ui.Interfaces = {}
---@overload fun(self: ui.Interfaces, interfaceID: integer, staticID: integer): ui.Component?
---@overload fun(self: ui.Interfaces, combinedID: integer, categoryID: integer, dynamicID: integer): ui.Component?
---@overload fun(self: ui.Interfaces, interfaceID: integer, staticID: integer, categoryID: integer, dynamicID: integer): ui.Component?
---@param combinedID integer
---@return ui.Component?
function ui.Interfaces:GetComponent(combinedID) end
---@param interfaceID integer
---@return ui.Interface?
function ui.Interfaces:GetInterface(interfaceID) end

---@class ui.Layer : ui.ComponentCollection
ui.Layer = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Layer
function ui.Layer.new(parent, categoryID, dynamicID) end

---@class ui.Line : ui.Component
---@field invert boolean
---@field width integer
ui.Line = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Line
function ui.Line.new(parent, categoryID, dynamicID) end

---@class ui.List : ui.Component
---@field buttonSprite ui.SpriteData
---@field contentMargin ui.Margin
---@field dropdownButtonOffset integer
---@field dropdownButtonSize integer
---@field dropdownMaxVisibleEntries integer
---@field enabled boolean
---@field entries any[]
---@field entryHeight integer
---@field entryIconScale integer
---@field entrySprite ui.SpriteData
---@field entryText ui.TextData
---@field headerMargin ui.Margin
---@field headerSprite ui.SpriteData
---@field id integer
---@field isDropdown boolean
---@field maxSelected integer
---@field numSelectedEntries integer
---@field scrollbar ui.ScrollBar
---@field selected boolean
---@field selectedEntries any[]
---@field text string
---@field visible boolean
ui.List = {}
---@param label string
---@param id integer
---@return boolean
function ui.List:Add(label, id) end
function ui.List:Clear() end
---@param id integer
---@return boolean
function ui.List:GetEntryEnabled(id) end
---@param id integer
---@return boolean
function ui.List:GetEntrySelected(id) end
---@param id integer
---@return boolean
function ui.List:GetEntryVisible(id) end
---@param id integer
---@return boolean
function ui.List:HasEntry(id) end
---@overload fun(self: ui.List, entriesMap: table<string, integer>, selectedID: integer?): boolean
---@param entries string[]
---@param selectedID integer?
---@return boolean
function ui.List:SetEntries(entries, selectedID) end
---@param id integer
---@param enabled boolean
---@return boolean
function ui.List:SetEntryEnabled(id, enabled) end
---@param id integer
---@param spriteID integer
---@return boolean
function ui.List:SetEntryIcon(id, spriteID) end
---@param id integer
---@param selected boolean
---@param triggerEvents boolean?
---@return boolean
function ui.List:SetEntrySelected(id, selected, triggerEvents) end
---@param id integer
---@param visible boolean
---@return boolean
function ui.List:SetEntryVisible(id, visible) end
function ui.List:UnselectAll() end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.List
function ui.List.new(parent, categoryID, dynamicID) end

---@class ui.Margin
---@field bottom integer
---@field left integer
---@field right integer
---@field top integer
ui.Margin = {}
---@overload fun(allSides: integer): ui.Margin
---@overload fun(left: integer, top: integer, right: integer, bottom: integer): ui.Margin
---@return ui.Margin
function ui.Margin.new() end

---@class ui.Model : ui.Component
---@field animID integer
---@field associatedObjectID integer
---@field associatedObjectQuantity integer
---@field disableZWrite boolean
---@field environment ui.ModelEnvironment
---@field modelHeight integer
---@field modelID1 integer
---@field modelID2 integer
---@field modelType ui.ModelType
---@field modelWidth integer
---@field npcCustomisation ui.NPCCustomisation
---@field orthographic boolean
---@field rotation Vector3
---@field screenOffset Vector3
---@field usePlayerModelRecolour boolean
---@field viewDistance integer
---@field worldOffset Vector3
ui.Model = {}
function ui.Model:ResetEnvironment() end
---@param logicTick integer
function ui.Model:RestartAnimation(logicTick) end
---@param objectID integer
---@param quantity integer?
function ui.Model:SetAssociatedObject(objectID, quantity) end
---@param ambient number
---@param contrast number
---@param antiContrast number
---@param sunRGB Vector3
---@param sunDirection Vector3
---@param envMapID integer
function ui.Model:SetLighting(ambient, contrast, antiContrast, sunRGB, sunDirection, envMapID) end
---@param type ui.ModelType
---@param modelID integer
---@param secondaryModelID integer?
function ui.Model:SetModel(type, modelID, secondaryModelID) end
---@param slot integer
---@param sourceColourHSL integer
---@param replacementColourHSL integer
function ui.Model:SetRecolour(slot, sourceColourHSL, replacementColourHSL) end
---@param slot integer
---@param sourceMaterialID integer
---@param replacementMaterialID integer
function ui.Model:SetRematerial(slot, sourceMaterialID, replacementMaterialID) end
---@param position Vector3
---@param rotationYawPitchRoll Vector3
---@param scale Vector3
---@param durationMs integer
function ui.Model:SetTransform(position, rotationYawPitchRoll, scale, durationMs) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Model
function ui.Model.new(parent, categoryID, dynamicID) end

---@class ui.ModelCamera
---@field clearColour Vector4
---@field farPlane number
---@field fov number
---@field isTransitionComplete boolean
---@field isTransitionInProgress boolean
---@field lookAt Vector3
---@field nearPlane number
---@field position Vector3
---@field sortModelsUsingComponentOrder boolean
---@field transitionMaskSprite any
---@field transitionRatio number
---@field transitionType ui.ModelCameraTransition
---@field useLookAt boolean
---@field yawPitchRoll Vector3
ui.ModelCamera = {}
function ui.ModelCamera:ClearTransition() end
---@param near number
---@param far number
function ui.ModelCamera:SetClipPlanes(near, far) end
---@param fov number
---@param durationMs integer
function ui.ModelCamera:SetFOV(fov, durationMs) end
---@param target Vector3
---@param durationMs integer
function ui.ModelCamera:SetLookAt(target, durationMs) end
---@param position Vector3
---@param durationMs integer
function ui.ModelCamera:SetPosition(position, durationMs) end
---@param yawPitchRoll Vector3
---@param durationMs integer
function ui.ModelCamera:SetYawPitchRoll(yawPitchRoll, durationMs) end
---@param transition ui.ModelCameraTransition
---@param maskSpriteID integer
---@param durationMs integer
function ui.ModelCamera:StartTransition(transition, maskSpriteID, durationMs) end

---@class ui.ModelCameraTransition
---@field CROSSFADE any
---@field FADE any
---@field NONE any
ui.ModelCameraTransition = {}

---@class ui.ModelEnvironment
---@field ambient number
---@field anticontrast number
---@field bloomScale number
---@field contrast number
---@field envMapID integer
---@field exposureKey number
---@field maxAutoExposure number
---@field minAutoExposure number
---@field shadowBias number
---@field sunDirection Vector3
---@field sunRGB Vector3
ui.ModelEnvironment = {}

---@class ui.ModelGroup : ui.ComponentCollection
---@field activeCamera ui.ModelCamera?
---@field activeCameraID integer
ui.ModelGroup = {}
---@overload fun(self: ui.ModelGroup, camera: ui.ModelCamera): integer
---@return integer
function ui.ModelGroup:AddCamera() end
---@param cameraIndex integer
function ui.ModelGroup:DeleteCamera(cameraIndex) end
---@return ui.ModelCamera?
function ui.ModelGroup:GetCamera() end
---@param cameraIndex integer
---@return boolean
function ui.ModelGroup:IsValidCameraID(cameraIndex) end
---@param cameraIndex integer
---@param transition ui.ModelCameraTransition
---@param transitionMaskSpriteID integer
---@param transitionDurationMs integer
---@return boolean
function ui.ModelGroup:SwitchCamera(cameraIndex, transition, transitionMaskSpriteID, transitionDurationMs) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.ModelGroup
function ui.ModelGroup.new(parent, categoryID, dynamicID) end

---@class ui.ModelType
---@field INV_MANWEAR_MODEL any
---@field INV_WOMANWEAR_MODEL any
---@field MODEL any
---@field NONE any
---@field NPC_HEAD any
---@field NPC_MODEL any
---@field OBJECT any
---@field PLAYER_HEAD any
---@field PLAYER_HEAD_NOWORN any
---@field PLAYER_MODEL any
ui.ModelType = {}

---@class ui.NPCCustomisation
---@field customisingBody boolean
---@field isPlayerClone boolean
---@field modelList integer[]
---@field modelRecolourList table<integer, integer[]>
---@field modelRematerialList table<integer, integer[]>
---@field modelRotationList Vector3[]
---@field modelScaleList number[]
---@field modelTranslationList Vector3[]
---@field npcID integer
---@field playerIdkColour integer[]
---@field recolourDest integer[]
---@field rematerialDest integer[]
ui.NPCCustomisation = {}
---@param modelSlot integer
---@param modelID integer
---@param scale number?
---@param translation Vector3?
---@param rotationYawPitchRoll Vector3?
function ui.NPCCustomisation:SetModelSlot(modelSlot, modelID, scale, translation, rotationYawPitchRoll) end
---@param modelSlot integer
---@param recolourSlot integer
---@param sourceColourHSL integer
---@param replacementColourHSL integer
function ui.NPCCustomisation:SetModelSlotRecolour(modelSlot, recolourSlot, sourceColourHSL, replacementColourHSL) end
---@param modelSlot integer
---@param rematerialSlot integer
---@param sourceMaterialID integer
---@param replacementMaterialID integer
function ui.NPCCustomisation:SetModelSlotRematerial(modelSlot, rematerialSlot, sourceMaterialID, replacementMaterialID) end
---@overload fun(npcID: integer, customisingBody: boolean): ui.NPCCustomisation
---@param customisingBody boolean
---@return ui.NPCCustomisation
function ui.NPCCustomisation.new(customisingBody) end

---@class ui.ObjectQuantityDisplayMode
---@field ALWAYS any
---@field MULTIPLE any
---@field NEVER any
ui.ObjectQuantityDisplayMode = {}

---@class ui.OpNameFilter
---@field exactMatch boolean
---@field filterString string
---@field invertFilter boolean
ui.OpNameFilter = {}
---@param testString string
---@return boolean
function ui.OpNameFilter:Test(testString) end
---@overload fun(filterString: string, exactMatch: boolean, invertFilter: boolean): ui.OpNameFilter
---@return ui.OpNameFilter
function ui.OpNameFilter.new() end

---@class ui.PagedCarousel : ui.ComponentCollection
---@field buttonDisplayMode ui.CarouselButtonDisplayMode
---@field buttonHeight integer
---@field buttonSprite ui.SpriteData
---@field buttonWidth integer
---@field inactivePageFadeRegionSize integer
---@field inactivePageReceiveInput boolean
---@field inactivePageScale number
---@field inactivePageVisibility number
---@field isSinglePageDisplay boolean
---@field isSwitchingPages boolean
---@field numFullyVisiblePages integer
---@field pageBackgroundSprite ui.SpriteData
---@field pageContentMargin ui.Margin
---@field pageSpacing integer
ui.PagedCarousel = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.PagedCarousel
function ui.PagedCarousel.new(parent, categoryID, dynamicID) end

---@class ui.PagedLayer : ui.ComponentCollection
---@field activePage integer
---@field backgroundSprite ui.SpriteData
---@field contentMargin ui.Margin
---@field numBuiltinPages integer
---@field numPages integer
ui.PagedLayer = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.PagedLayerHeader
function ui.PagedLayer:AddHeader(parent, categoryID, dynamicID) end
---@param pageIndex integer
---@return boolean
function ui.PagedLayer:GetPageEnabled(pageIndex) end
---@param pageIndex integer
---@return integer
function ui.PagedLayer:GetPageIcon(pageIndex) end
---@param pageIndex integer
---@return string
function ui.PagedLayer:GetPageLabel(pageIndex) end
---@param pageIndex integer
---@param enabled boolean
function ui.PagedLayer:SetPageEnabled(pageIndex, enabled) end
---@param pageIndex integer
---@param iconSpriteID integer
function ui.PagedLayer:SetPageIcon(pageIndex, iconSpriteID) end
---@param pageIndex integer
---@param label string
function ui.PagedLayer:SetPageLabel(pageIndex, label) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.PagedLayer
function ui.PagedLayer.new(parent, categoryID, dynamicID) end

---@class ui.PagedLayerHeader
---@field backgroundSprite ui.SpriteData
---@field contentMargin ui.Margin
---@field disabledPageIcon ui.SpriteData
---@field entryText ui.TextData
---@field isHorizontal boolean
---@field pageHeaderMargin ui.Margin
---@field pageHeaderSprite ui.SpriteData
---@field target ui.PagedLayer
ui.PagedLayerHeader = {}

---@class ui.Panel : ui.ComponentCollection
---@field isVertical boolean
---@field spacing integer
ui.Panel = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Panel
function ui.Panel.new(parent, categoryID, dynamicID) end

---@class ui.PinchAxisBit
---@field HORIZONTAL any
---@field VERTICAL any
ui.PinchAxisBit = {}

---@class ui.PlayerOpType
---@field CLAN_GUEST any
---@field CLAN_MEMBER any
---@field FRIEND any
---@field FRIEND_CHAT any
---@field GROUP_BANNED any
---@field GROUP_MEMBER any
---@field NONE any
ui.PlayerOpType = {}

---@class ui.Pos
---@field x integer
---@field xParentPc number
---@field xSelfPc number
---@field y integer
---@field yParentPc number
---@field ySelfPc number
ui.Pos = {}
---@overload fun(other: ui.Pos): ui.Pos
---@overload fun(x: integer, y: integer): ui.Pos
---@overload fun(x: integer, y: integer, xParentPc: number, yParentPc: number): ui.Pos
---@overload fun(x: integer, y: integer, xParentPc: number, yParentPc: number, xSelfPc: number, ySelfPc: number): ui.Pos
---@return ui.Pos
function ui.Pos.new() end

---@class ui.RadialProgressOverlay : ui.Component
---@field curValue number
---@field endValue number
---@field initialValue number
---@field maskSprite ui.SpriteData
---@field progress number
ui.RadialProgressOverlay = {}
---@param initialValue number
---@param endValue number
---@param flags integer
function ui.RadialProgressOverlay:Start(initialValue, endValue, flags) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.RadialProgressOverlay
function ui.RadialProgressOverlay.new(parent, categoryID, dynamicID) end

---@class ui.RadialProgressOverlayFlag
---@field AUTOMATIC any
---@field FLIP_HORIZONTAL any
---@field FLIP_VERTICAL any
---@field REVERSE any
ui.RadialProgressOverlayFlag = {}

---@class ui.RadioGroup : ui.Component
---@field buttonSprite ui.SpriteData
---@field entryMargin ui.Margin
---@field labelsText ui.TextData
---@field numSelected integer
---@field selectedLabels string[]
---@field selectedValues integer[]
ui.RadioGroup = {}
---@param id integer
---@param label string
---@return boolean
function ui.RadioGroup:Add(id, label) end
---@param id integer
---@return boolean
function ui.RadioGroup:GetOptionEnabled(id) end
---@param selectionIndex integer
---@return string
function ui.RadioGroup:GetSelectedLabel(selectionIndex) end
---@param selectionIndex integer
---@return integer
function ui.RadioGroup:GetSelectedValue(selectionIndex) end
---@param id integer
---@return boolean
function ui.RadioGroup:HasEntry(id) end
---@param id integer
---@return boolean
function ui.RadioGroup:Remove(id) end
---@param entries table<string, integer>
---@return boolean
function ui.RadioGroup:SetEntries(entries) end
---@param id integer
---@param enabled boolean
---@return boolean
function ui.RadioGroup:SetOptionEnabled(id, enabled) end
---@param id integer
---@param selected boolean
---@param triggerEvents boolean?
---@return boolean
function ui.RadioGroup:SetOptionSelected(id, selected, triggerEvents) end
---@param minSelectedEntries integer
---@param maxSelectedEntries integer
---@return boolean
function ui.RadioGroup:SetSelectionLimits(minSelectedEntries, maxSelectedEntries) end
---@param numColumns integer
---@param spacing integer
---@param buttonSize integer
---@param buttonLabelSpacing integer
function ui.RadioGroup:SetVisualParams(numColumns, spacing, buttonSize, buttonLabelSpacing) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.RadioGroup
function ui.RadioGroup.new(parent, categoryID, dynamicID) end

---@class ui.Rectangle : ui.Component
---@field fill boolean
---@field outlineThickness integer
ui.Rectangle = {}
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Rectangle
function ui.Rectangle.new(parent, categoryID, dynamicID) end

---@class ui.ScrollBar
---@field autohide boolean
---@field backgroundSprite ui.SpriteData
---@field buttonLength integer
---@field buttonSprite ui.SpriteData
---@field handleSprite ui.SpriteData
---@field size integer
---@field visible boolean
ui.ScrollBar = {}

---@class ui.SelectionChangeEvent
---@field DESELECTED any
---@field ERROR_MAX_SELECTED any
---@field ERROR_NOT_SELECTABLE any
---@field SELECTED any
ui.SelectionChangeEvent = {}

---@class ui.Size
---@field height integer
---@field heightParentPc number
---@field width integer
---@field widthParentPc number
ui.Size = {}
---@overload fun(other: ui.Size): ui.Size
---@overload fun(width: integer, height: integer): ui.Size
---@overload fun(width: integer, height: integer, widthParentPc: number, heightParentPc: number): ui.Size
---@return ui.Size
function ui.Size.new() end

---@class ui.Slider : ui.Component
---@field labelsText ui.TextData
---@field maxValue integer
---@field minValue integer
---@field notchSprite ui.SpriteData
---@field numValues integer
---@field rate integer
---@field scale integer
---@field thumbSprite ui.SpriteData
---@field trackSprite ui.SpriteData
---@field value integer
---@field valueLabel string
ui.Slider = {}
---@param value integer
---@param triggerEvents boolean?
---@return boolean
function ui.Slider:SetValue(value, triggerEvents) end
---@overload fun(self: ui.Slider, entries: string[], selectedValue: integer?): boolean
---@overload fun(self: ui.Slider, entriesMap: table<string, integer>, selectedValue: integer?): boolean
---@overload fun(self: ui.Slider, min: integer, max: integer, curValue: integer, valueDisplayDivisor: integer, incrementRate: integer): boolean
---@param max integer
---@param curValue integer
---@return boolean
function ui.Slider:Setup(max, curValue) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Slider
function ui.Slider.new(parent, categoryID, dynamicID) end

---@class ui.Sprite : ui.Component
---@field associatedObjectID integer
---@field associatedObjectQuantity integer
---@field associatedObjectQuantityMode ui.ObjectQuantityDisplayMode
---@field isFlippedHorizontally boolean
---@field isFlippedVertical boolean
---@field isTiling boolean
---@field outlineWidth integer
---@field rotationDegrees number
---@field rotationRadians number
---@field runtimeSprite RuntimeSprite
---@field shadowColour Vector4
---@field shadowRGBA integer
---@field sprite integer
---@field spriteID integer
---@field visualMargins ui.Margin
ui.Sprite = {}
---@overload fun(self: ui.Sprite, horizontalAlignment: ui.AlignMode, verticalAlignment: ui.AlignMode)
---@param alignment ui.AlignMode
function ui.Sprite:AlignTo(alignment) end
---@return ui.SpriteDataConfig
function ui.Sprite:GetConfigCopy() end
---@param objectID integer
---@param quantity integer?
function ui.Sprite:SetAssociatedObject(objectID, quantity) end
---@param config ui.SpriteDataConfig
function ui.Sprite:SetConfig(config) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Sprite
function ui.Sprite.new(parent, categoryID, dynamicID) end

---@class ui.SpriteData
---@field alpha number
---@field colour Vector4
---@field isFlippedHorizontally boolean
---@field isFlippedVertical boolean
---@field isTiling boolean
---@field outlineWidth integer
---@field rgba integer
---@field rotationDegrees number
---@field rotationRadians number
---@field runtimeSprite RuntimeSprite?
---@field shadowColour Vector4
---@field shadowRGBA integer
---@field sprite integer
---@field spriteID integer
---@field visualMargins ui.Margin
ui.SpriteData = {}
---@return ui.SpriteDataConfig
function ui.SpriteData:GetConfigCopy() end
---@param config ui.SpriteDataConfig
function ui.SpriteData:SetConfig(config) end

---@class ui.SpriteDataConfig
---@field alpha number
---@field colour Vector4
---@field isFlippedHorizontally boolean
---@field isFlippedVertical boolean
---@field isTiling boolean
---@field outlineWidth integer
---@field rgba integer
---@field rotationDegrees number
---@field rotationRadians number
---@field shadowColour Vector4
---@field shadowRGBA integer
---@field visualMargins ui.Margin
ui.SpriteDataConfig = {}

---@class ui.StyleSheet
---@field id integer
---@field parent ui.StyleSheet
---@field parentID integer
ui.StyleSheet = {}
---@param property integer
---@return integer?
function ui.StyleSheet:GetValue(property) end
---@param property integer
---@return boolean
function ui.StyleSheet:HasValue(property) end
---@param property integer
---@param value integer
function ui.StyleSheet:SetValue(property, value) end

---@class ui.StyleSheets
ui.StyleSheets = {}
---@param styleSheetID integer
---@return ui.StyleSheet?
function ui.StyleSheets:Find(styleSheetID) end

---@class ui.SwipeDirectionBit
---@field DOWN any
---@field LEFT any
---@field RIGHT any
---@field UP any
ui.SwipeDirectionBit = {}

---@class ui.Text : ui.Component
---@field alignHorizontal ui.AlignMode
---@field alignVertical ui.AlignMode
---@field associatedObjectID integer
---@field associatedObjectQuantity integer
---@field content string
---@field font integer
---@field isShadowed boolean
---@field lineSpacing integer
---@field maxLines integer
---@field shadowColour Vector4
---@field shadowRGBA integer
ui.Text = {}
---@overload fun(self: ui.Text, horizontalAlignment: ui.AlignMode, verticalAlignment: ui.AlignMode)
---@param alignment ui.AlignMode
function ui.Text:AlignTo(alignment) end
---@return ui.TextDataConfig
function ui.Text:GetConfigCopy() end
---@param objectID integer
---@param quantity integer?
function ui.Text:SetAssociatedObject(objectID, quantity) end
---@param config ui.TextDataConfig
function ui.Text:SetConfig(config) end
---@param parent ui.ComponentCollection
---@param categoryID integer?
---@param dynamicID integer?
---@return ui.Text
function ui.Text.new(parent, categoryID, dynamicID) end

---@class ui.TextContentVisibilityMode
---@field HIDDEN any
---@field SHOW_LAST any
---@field VISIBLE any
ui.TextContentVisibilityMode = {}

---@class ui.TextData
---@field alignHorizontal ui.AlignMode
---@field alignVertical ui.AlignMode
---@field alpha number
---@field colour Vector4
---@field content string
---@field font integer
---@field isShadowed boolean
---@field lineSpacing integer
---@field maxLines integer
---@field rgba integer
---@field shadowColour Vector4
---@field shadowRGBA integer
ui.TextData = {}
---@overload fun(self: ui.TextData, horizontalAlignment: ui.AlignMode, verticalAlignment: ui.AlignMode)
---@param alignment ui.AlignMode
function ui.TextData:AlignTo(alignment) end
---@return ui.TextDataConfig
function ui.TextData:GetConfigCopy() end
---@param config ui.TextDataConfig
function ui.TextData:SetConfig(config) end

---@class ui.TextDataConfig
---@field alignHorizontal ui.AlignMode
---@field alignVertical ui.AlignMode
---@field alpha number
---@field colour Vector4
---@field font integer
---@field isShadowed boolean
---@field lineSpacing integer
---@field maxLines integer
---@field rgba integer
---@field shadowColour Vector4
---@field shadowRGBA integer
ui.TextDataConfig = {}
---@return ui.TextDataConfig
function ui.TextDataConfig.new() end

---@class ui.TriggerMode
---@field ONPRESS any
---@field ONPRESS_FINISH any
---@field ONRELEASE any
---@field REPEAT any
ui.TriggerMode = {}
