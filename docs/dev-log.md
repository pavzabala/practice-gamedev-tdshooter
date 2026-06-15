# Development Log

## 2026-06-04
- created repo structure
- starting phase 0
- lua formatter
- Created player entity and movement prototype in main.lua
- finished phase 0

## 2026-06-05
- started phase 1
- added movement normalization(math.sqrt())
- IMPLEMENTED: aim line (mouse position - player position vector)
- LEARNED: using math.atan2() to calculate player-to-mousepoint angle
- REFACTOR: created graphics.lua and vector.lua in utils

## 2026-06-08
- IMPLEMENTED: bullets
- REFACTOR: bullet instances to be managed by a bullet manager (`src/manager/bullet_manager.lua`)
    - bullet manager iterates through list of bullets and updates or draws them.
- LEARNED: using a metatable to define behavior of instances. instances each have their individual attributes, but I use `setmetatable()` to attribute behavior (draw functions, etc.) to the class definition.
    - class definition contains the functions, while `Bullet.new()` instantiates metatable and fields.

## 2026-06-15
- IMPLEMENTED: Phase 1 step 6, bullet movement
- LEARNED: velocity calculation (current pos + vector * speed * dt)
- IMPLEMENTED: phase 1 step 7, bullet garbage collection
    - delete bullet once it leaves the screen boundary, based on radius: `bullet:isOffscreen()`
