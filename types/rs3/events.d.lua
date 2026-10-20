---@meta

---@alias RS3EventSubscriptionName string

---@class Event
---@field ChatMessage RS3EventSubscription<fun(event: RS3EventChatMessagePayload)>
---@field ContentLayerReady RS3EventSubscription<fun(event: RS3EventContentLayerReadyPayload)>
---@field Draw RS3EventSubscription<fun(event: RS3EventDrawPayload)>
---@field EntityDraw RS3EventSubscription<fun(event: RS3EventEntityDrawPayload): boolean>
---@field GameStateChanged RS3EventSubscription<fun(event: RS3EventGameStateChangedPayload)>
---@field GrandExchangeOfferUpdated RS3EventSubscription<fun(event: RS3EventGrandExchangeOfferUpdatedPayload)>
---@field InventoryAdded RS3EventSubscription<fun(event: RS3EventInventoryAddedPayload)>
---@field InventoryRemoved RS3EventSubscription<fun(event: RS3EventInventoryRemovedPayload)>
---@field InventoryUpdated RS3EventSubscription<fun(event: RS3EventInventoryUpdatedPayload)>
---@field KeyDown RS3EventSubscription<fun(event: RS3EventKeyDownPayload)>
---@field KeyTyped RS3EventSubscription<fun(event: RS3EventKeyTypedPayload)>
---@field KeyUp RS3EventSubscription<fun(event: RS3EventKeyUpPayload)>
---@field LocAdded RS3EventSubscription<fun(event: RS3EventLocAddedPayload)>
---@field LocAnimation RS3EventSubscription<fun(event: RS3EventLocAnimationPayload)>
---@field LocCustomised RS3EventSubscription<fun(event: RS3EventLocCustomisedPayload)>
---@field LocRemoved RS3EventSubscription<fun(event: RS3EventLocRemovedPayload)>
---@field Logic RS3EventSubscription<fun(event: RS3EventLogicPayload)>
---@field MiniMenuClosed RS3EventSubscription<fun(event: RS3EventMiniMenuClosedPayload)>
---@field MiniMenuEntryAdded RS3EventSubscription<fun(event: RS3EventMiniMenuEntryAddedPayload)>
---@field MiniMenuEntrySelected RS3EventSubscription<fun(event: RS3EventMiniMenuEntrySelectedPayload)>
---@field MiniMenuOpened RS3EventSubscription<fun(event: RS3EventMiniMenuOpenedPayload)>
---@field MiniMenuReady RS3EventSubscription<fun(event: RS3EventMiniMenuReadyPayload)>
---@field NPCEntityAdded RS3EventSubscription<fun(event: RS3EventNPCEntityAddedPayload)>
---@field NPCEntityRemoved RS3EventSubscription<fun(event: RS3EventNPCEntityRemovedPayload)>
---@field ObjStackEntityAdded RS3EventSubscription<fun(event: RS3EventObjStackEntityAddedPayload)>
---@field ObjStackEntityChanged RS3EventSubscription<fun(event: RS3EventObjStackEntityChangedPayload)>
---@field ObjStackEntityRemoved RS3EventSubscription<fun(event: RS3EventObjStackEntityRemovedPayload)>
---@field OptionalDependencyChanged RS3EventSubscription<fun(event: RS3EventOptionalDependencyChangedPayload)>
---@field OptionalPermissionChanged RS3EventSubscription<fun(event: RS3EventOptionalPermissionChangedPayload)>
---@field PlayerEntityAdded RS3EventSubscription<fun(event: RS3EventPlayerEntityAddedPayload)>
---@field PlayerEntityRemoved RS3EventSubscription<fun(event: RS3EventPlayerEntityRemovedPayload)>
---@field RegionCreated RS3EventSubscription<fun(event: RS3EventRegionCreatedPayload)>
---@field RegionUpdated RS3EventSubscription<fun()>
---@field RunEnergyTransmit RS3EventSubscription<fun(event: RS3EventRunEnergyTransmitPayload)>
---@field RunWeightTransmit RS3EventSubscription<fun(event: RS3EventRunWeightTransmitPayload)>
---@field ServerLogic RS3EventSubscription<fun()>
---@field SettingsLayerReady RS3EventSubscription<fun(event: RS3EventSettingsLayerReadyPayload)>
---@field SkillTransmit RS3EventSubscription<fun(event: RS3EventSkillTransmitPayload)>
---@field VarTransmit RS3EventSubscription<fun(event: RS3EventVarTransmitPayload)>
---@field WindowFocusChanged RS3EventSubscription<fun(event: RS3EventWindowFocusChangedPayload)>
---@field WindowSizeChanged RS3EventSubscription<fun(event: RS3EventWindowSizeChangedPayload)>
---@field WorldCreated RS3EventSubscription<fun(event: RS3EventWorldCreatedPayload)>
---@field WorldUpdated RS3EventSubscription<fun()>
Event = {}

---@class RS3EventChatMessagePayload
---@field chatMessage string
---@field chatType ChatType
---@field senderNameFiltered string
---@field senderNameSimple string
---@field senderNameUnfiltered string
---@field timestamp integer
RS3EventChatMessagePayload = {}

---@class RS3EventContentLayerReadyPayload
---@field component ui.Component
RS3EventContentLayerReadyPayload = {}

---@class RS3EventDrawPayload
---@field timeDeltaSecs number
RS3EventDrawPayload = {}

---@class RS3EventEntityDrawPayload
---@field entityType EntityType
---@field npcEntity NPCEntity?
---@field objStackEntity ObjStackEntity?
---@field playerEntity PlayerEntity?
RS3EventEntityDrawPayload = {}

---@class RS3EventGameStateChangedPayload
---@field newState GameState
---@field oldState GameState
RS3EventGameStateChangedPayload = {}

---@class RS3EventGrandExchangeOfferUpdatedPayload
---@field listing GrandExchangeOffer
---@field slot integer
RS3EventGrandExchangeOfferUpdatedPayload = {}

---@class RS3EventInventoryAddedPayload
---@field inv InvTypeProxy
RS3EventInventoryAddedPayload = {}

---@class RS3EventInventoryRemovedPayload
---@field inv InvTypeProxy
RS3EventInventoryRemovedPayload = {}

---@class RS3EventInventoryUpdatedPayload
---@field inv InvTypeProxy
---@field slotsUpdated integer[]
RS3EventInventoryUpdatedPayload = {}

---@class RS3EventKeyDownPayload
---@field gameKey GameKey
---@field isRepeat boolean
---@field modifiers integer
---@field systemKey SystemKey
---@field timestamp integer
RS3EventKeyDownPayload = {}

---@class RS3EventKeyTypedPayload
---@field char integer
---@field modifiers integer
---@field timestamp integer
RS3EventKeyTypedPayload = {}

---@class RS3EventKeyUpPayload
---@field gameKey GameKey
---@field modifiers integer
---@field systemKey SystemKey
---@field timestamp integer
RS3EventKeyUpPayload = {}

---@class RS3EventLocAddedPayload
---@field config LocType
---@field coordGrid CoordGrid
---@field overrideTransform boolean
---@field rotationType RotationType
---@field shapeType LocShapeType
---@field transformRotation Vector3
---@field transformScale Vector3
---@field transformTranslate Vector3
RS3EventLocAddedPayload = {}

---@class RS3EventLocAnimationPayload
---@field animation SeqType
---@field animationDelay integer
---@field coordGrid CoordGrid
---@field rotationType RotationType
---@field shapeType LocShapeType
RS3EventLocAnimationPayload = {}

---@class RS3EventLocCustomisedPayload
---@field config LocType
---@field coordGrid CoordGrid
---@field customColours integer[]
---@field customMaterials integer[]
---@field customModels integer[]
---@field rotationType RotationType
---@field shapeType LocShapeType
RS3EventLocCustomisedPayload = {}

---@class RS3EventLocRemovedPayload
---@field coordGrid CoordGrid
---@field rotationType RotationType
---@field shapeType LocShapeType
RS3EventLocRemovedPayload = {}

---@class RS3EventLogicPayload
---@field logicTick integer
RS3EventLogicPayload = {}

---@class RS3EventMiniMenuClosedPayload
---@field miniMenu MiniMenu
RS3EventMiniMenuClosedPayload = {}

---@class RS3EventMiniMenuEntryAddedPayload
---@field entry MiniMenuEntry
RS3EventMiniMenuEntryAddedPayload = {}

---@class RS3EventMiniMenuEntrySelectedPayload
---@field entry MiniMenuEntry
RS3EventMiniMenuEntrySelectedPayload = {}

---@class RS3EventMiniMenuOpenedPayload
---@field miniMenu MiniMenu
RS3EventMiniMenuOpenedPayload = {}

---@class RS3EventMiniMenuReadyPayload
---@field miniMenu MiniMenu
RS3EventMiniMenuReadyPayload = {}

---@class RS3EventNPCEntityAddedPayload
---@field entityType EntityType
---@field npcEntity NPCEntity
RS3EventNPCEntityAddedPayload = {}

---@class RS3EventNPCEntityRemovedPayload
---@field entityType EntityType
---@field npcEntity NPCEntity
RS3EventNPCEntityRemovedPayload = {}

---@class RS3EventObjStackEntityAddedPayload
---@field count integer
---@field entityType EntityType
---@field isOwner boolean
---@field objStackEntity ObjStackEntity
---@field objType ObjType
RS3EventObjStackEntityAddedPayload = {}

---@class RS3EventObjStackEntityChangedPayload
---@field entityType EntityType
---@field isOwner boolean
---@field newCount integer
---@field objStackEntity ObjStackEntity
---@field objType ObjType
---@field oldCount integer
RS3EventObjStackEntityChangedPayload = {}

---@class RS3EventObjStackEntityRemovedPayload
---@field count integer
---@field entityType EntityType
---@field isOwner boolean
---@field objStackEntity ObjStackEntity
---@field objType ObjType
RS3EventObjStackEntityRemovedPayload = {}

---@class RS3EventOptionalDependencyChangedPayload
---@field enabled boolean
---@field pluginIdentifier string
RS3EventOptionalDependencyChangedPayload = {}

---@class RS3EventOptionalPermissionChangedPayload
---@field enabled boolean
---@field permissionName string
RS3EventOptionalPermissionChangedPayload = {}

---@class RS3EventPlayerEntityAddedPayload
---@field entityType EntityType
---@field playerEntity PlayerEntity
RS3EventPlayerEntityAddedPayload = {}

---@class RS3EventPlayerEntityRemovedPayload
---@field entityType EntityType
---@field playerEntity PlayerEntity
RS3EventPlayerEntityRemovedPayload = {}

---@class RS3EventRegionCreatedPayload
---@field mapSquareMaxX integer
---@field mapSquareMaxZ integer
---@field mapSquareMinX integer
---@field mapSquareMinZ integer
---@field regionGridCorner CoordGrid
---@field regionGridLength integer
---@field regionGridWidth integer
RS3EventRegionCreatedPayload = {}

---@class RS3EventRegionUpdatedPayload
RS3EventRegionUpdatedPayload = {}

---@class RS3EventRunEnergyTransmitPayload
---@field newRunEnergy integer
---@field oldRunEnergy integer
RS3EventRunEnergyTransmitPayload = {}

---@class RS3EventRunWeightTransmitPayload
---@field newRunWeight integer
---@field oldRunWeight integer
RS3EventRunWeightTransmitPayload = {}

---@class RS3EventServerLogicPayload
RS3EventServerLogicPayload = {}

---@class RS3EventSettingsLayerReadyPayload
---@field component ui.Component
RS3EventSettingsLayerReadyPayload = {}

---@class RS3EventSkillTransmitPayload
---@field newGameplayLevel integer
---@field newXP integer
---@field oldGameplayLevel integer
---@field oldXP integer
---@field skill SkillType
RS3EventSkillTransmitPayload = {}

---@class RS3EventSubscription<T>
---@field Subscribe fun(reference: RS3EventSubscriptionName, callback: T)
---@field Unsubscribe fun(reference: RS3EventSubscriptionName)
RS3EventSubscription = {}

---@class RS3EventVarTransmitPayload
---@field newValue integer|string
---@field oldValue integer|string
---@field var VarType
RS3EventVarTransmitPayload = {}

---@class RS3EventWindowFocusChangedPayload
---@field hasFocus boolean
RS3EventWindowFocusChangedPayload = {}

---@class RS3EventWindowSizeChangedPayload
---@field newHeight integer
---@field newWidth integer
---@field oldHeight integer
---@field oldWidth integer
RS3EventWindowSizeChangedPayload = {}

---@class RS3EventWorldCreatedPayload
---@field mapSquareMaxX integer
---@field mapSquareMaxZ integer
---@field mapSquareMinX integer
---@field mapSquareMinZ integer
RS3EventWorldCreatedPayload = {}

---@class RS3EventWorldUpdatedPayload
RS3EventWorldUpdatedPayload = {}
