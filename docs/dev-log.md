# Development Log

## 2026-06-04
- created repo structure
- starting phase 0
- lua formatter
- Created player entity and movement prototype in main.lua

## 2026-06-05
- started phase 1
- added movement normalization(math.sqrt())
- implemented aim line (mouse position - player position vector)
- using math.atan2() to calculate player-to-mousepoint angle
- refactored code; created graphics.lua and vector.lua in utils