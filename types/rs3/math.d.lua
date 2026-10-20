---@meta

---@class AABB
---@field centre Vector3
---@field dimensions Vector3
---@field height number
---@field length number
---@field maxX number
---@field maxY number
---@field maxZ number
---@field maximum Vector3
---@field minX number
---@field minY number
---@field minZ number
---@field minimum Vector3
---@field radiusMaximum number
---@field radiusMaximumSq number
---@field radiusMinimum number
---@field radiusMinimumSq number
---@field width number
AABB = {}
---@param otherAABB AABB
function AABB:AddAABB(otherAABB) end
---@param position Vector3
function AABB:AddPosition(position) end
---@param position Vector3
---@return Vector3
function AABB:GetClosestPosition(position) end
---@param corner BoxCornerType
---@return boolean
function AABB:GetCorner(corner) end
---@param position Vector3
---@return number
function AABB:GetDistanceToPosition(position) end
---@param position Vector3
---@return Vector3
function AABB:GetFurthestPosition(position) end
---@overload fun(self: AABB, fromPosition: Vector3, toPosition: Vector3): boolean
---@param otherAABB AABB
---@return boolean
function AABB:Intersects(otherAABB) end
---@overload fun(self: AABB, position: Vector3): boolean
---@param otherAABB AABB
---@return boolean
function AABB:IsInside(otherAABB) end
---@param scale Vector3
function AABB:Scale(scale) end
---@param scale Vector3
function AABB:ScaleFromCentre(scale) end
---@param offset Vector3
function AABB:Translate(offset) end
---@param minimum Vector3
---@param maximum Vector3
---@return AABB
function AABB.new(minimum, maximum) end

---@enum BoxCornerType
BoxCornerType = {
    LEFT_BOTTOM_FAR = 6,
    LEFT_BOTTOM_NEAR = 2,
    LEFT_TOP_FAR = 4,
    LEFT_TOP_NEAR = 0,
    RIGHT_BOTTOM_FAR = 7,
    RIGHT_BOTTOM_NEAR = 3,
    RIGHT_TOP_FAR = 5,
    RIGHT_TOP_NEAR = 1,
}

---@class CoordFine
---@field level integer
---@field localX integer
---@field localZ integer
---@field mapSquareX integer
---@field mapSquareZ integer
---@field position Vector3
---@field x number
---@field y number
---@field z number
CoordFine = {}
---@param coordGrid CoordGrid
---@param fromCentre boolean
---@return CoordFine
function CoordFine.FromCoordGrid(coordGrid, fromCentre) end
---@return CoordGrid
function CoordFine:ToCoordGrid() end
---@overload fun(coordGrid: CoordGrid, fromCentre: boolean): CoordFine
---@overload fun(level: integer, position: Vector3): CoordFine
---@overload fun(level: integer, x: number, z: number): CoordFine
---@overload fun(level: integer, x: number, y: number, z: number): CoordFine
---@param coordFine CoordFine
---@return CoordFine
function CoordFine.new(coordFine) end

---@class CoordGrid
---@field level integer
---@field localX integer
---@field localZ integer
---@field mapSquareX integer
---@field mapSquareZ integer
---@field x integer
---@field z integer
CoordGrid = {}
---@param coordFine CoordFine
---@return CoordGrid
function CoordGrid.FromCoordFine(coordFine) end
---@param fromCentre boolean
---@return CoordFine
function CoordGrid:ToCoordFine(fromCentre) end
---@return integer
function CoordGrid:ToPacked() end
---@overload fun(coordFine: CoordFine): CoordGrid
---@overload fun(coordGrid: CoordGrid): CoordGrid
---@overload fun(level: integer, position: Vector3): CoordGrid
---@overload fun(level: integer, mapSquareX: integer, mapSquareZ: integer): CoordGrid
---@overload fun(level: integer, mapSquareX: integer, mapSquareZ: integer, localTileX: integer, localTileZ: integer): CoordGrid
---@param bitPacked integer
---@return CoordGrid
function CoordGrid.new(bitPacked) end

---@class Matrix33
Matrix33 = {}
---@param rotation Quaternion
---@return Matrix33
function Matrix33.fromQuaternion(rotation) end
---@param rotationAmount number
---@return Matrix33
function Matrix33.rotationY(rotationAmount) end

---@class Quaternion
Quaternion = {}
---@param source Matrix33
---@return Quaternion
function Quaternion.fromMatrix(source) end
---@param yaw number
---@param pitch number
---@param roll number
---@return Quaternion
function Quaternion.fromYawPitchRoll(yaw, pitch, roll) end
---@param rotation Quaternion
---@return Quaternion
function Quaternion:rotateBy(rotation) end

---@class Rect
---@field bottom number
---@field centreX number
---@field centreY number
---@field height number
---@field left number
---@field right number
---@field top number
---@field width number
---@field x number
---@field y number
Rect = {}
---@overload fun(self: Rect, x: number, y: number): boolean
---@param rect Rect
---@return boolean
function Rect:Contains(rect) end
---@param rect Rect
---@return Rect?
function Rect:GetIntersection(rect) end
---@overload fun(self: Rect, x: number, y: number): Rect
---@param rect Rect
---@return Rect
function Rect:GetUnion(rect) end
---@param horizontal number
---@param vertical number
function Rect:Grow(horizontal, vertical) end
---@param rect Rect
---@return boolean
function Rect:Intersects(rect) end
---@param scale number
function Rect:Scale(scale) end
---@param horizontal number
---@param vertical number
function Rect:Shrink(horizontal, vertical) end
---@param offsetX number
---@param offsetY number
function Rect:Translate(offsetX, offsetY) end
---@overload fun(x: number, y: number, width: number, height: number): Rect
---@return Rect
function Rect.new() end

---@class Vector
---@field invLength number
---@field isNormal boolean
---@field length number
---@field lengthSq number
---@field u number
---@field v number
---@field w number
---@field x number
---@field xy Vector2
---@field xyz Vector3
---@field y number
---@field z number
---@field zw Vector2
Vector = {}
---@return Vector
function Vector:Abs() end
---@return Vector
function Vector:Ceil() end
---@param other Vector
---@return number
function Vector:Dot(other) end
---@return Vector
function Vector:Floor() end
---@param other Vector
---@return Vector
function Vector:Max(other) end
---@param other Vector
---@return Vector
function Vector:Min(other) end
---@overload fun(self: Vector, fallback: Vector): Vector
function Vector:Normalise() end

---@class Vector2
Vector2 = {}
---@overload fun(v: number): Vector2
---@overload fun(x: number, y: number): Vector2
---@return Vector2
function Vector2.new() end

---@class Vector3
Vector3 = {}
---@overload fun(self: Vector3, other: Vector3): Vector3
---@param normal Vector3
---@return Vector3
function Vector3:Cross(normal) end
---@param rotation Quaternion
---@return Vector3
function Vector3:Rotate(rotation) end
---@overload fun(v: number): Vector3
---@overload fun(x: number, y: number, z: number): Vector3
---@return Vector3
function Vector3.new() end

---@class Vector4
Vector4 = {}
---@overload fun(v: number): Vector4
---@overload fun(xy: Vector2, zw: Vector2): Vector4
---@overload fun(x: number, y: number, z: number, w: number): Vector4
---@return Vector4
function Vector4.new() end

---@param command string
function ExecuteConsoleCommand(command) end
---@param value number
---@param min number
---@param max number
---@return number
function clamp(value, min, max) end
---@param format string
---@param args any
---@return string
function formatStr(format, args) end
---@overload fun(start: Vector2, final: Vector2, t: number): Vector2
---@overload fun(start: Vector3, final: Vector3, t: number): Vector3
---@overload fun(start: Vector4, final: Vector4, t: number): Vector4
---@overload fun(start: Matrix33, final: Matrix33, t: number): Matrix33
---@param start number
---@param final number
---@param t number
---@return number
function lerp(start, final, t) end
---@param format string
---@param args any
function log(format, args) end
---@param args any
function print(args) end
---@param min number
---@param max number
---@return number
function random(min, max) end
---@overload fun(start: Quaternion, final: Quaternion, t: number): Quaternion
---@param start Vector3
---@param final Vector3
---@param t number
---@return Vector3
function slerp(start, final, t) end
