# Practice GameDev: Top-Down Shooter

A learning-focused top-down arena shooter built with [LÖVE](https://love2d.org/) and Lua. The project is intentionally small and iterative: build the smallest playable game first, then refactor, expand, and polish it into a replayable survival shooter.

## Project Status

**Current roadmap position:** Phase 1 — LOVE2D Fundamentals.

The repository has moved beyond Lua-only exercises and currently contains a basic LOVE2D prototype with player movement, mouse aiming, bullet spawning/movement/cleanup, and a simple enemy that chases the player. The next major roadmap target is to complete the remaining vertical-slice gameplay pieces from Phase 2: combat interactions, health/damage/death, enemy spawning, score tracking, UI, and restart flow.

## Repository Info

- **Language:** Lua
- **Framework:** LÖVE / LOVE2D
- **Project type:** Game development practice project
- **Genre target:** Top-down arena survival shooter
- **Primary learning goals:** Lua, LOVE2D, game loops, entity systems, refactoring, and project management
- **Roadmap:** [`docs/roadmap.md`](docs/roadmap.md)
- **Game design notes:** [`docs/game-design.md`](docs/game-design.md)
- **Development log:** [`docs/dev-log.md`](docs/dev-log.md)

## Current Features

- [x] Player movement with WASD
- [x] Frame-rate independent movement using `dt`
- [x] Diagonal movement normalization
- [x] Player clamping to screen bounds
- [x] Mouse aiming
- [x] Rotated player rendering based on aim direction
- [x] Left-click shooting
- [x] Bullet entities with per-instance state
- [x] Bullet movement using velocity and delta time
- [x] Bullet cleanup when off-screen
- [x] Bullet manager for spawning, updating, drawing, and cleanup
- [x] Basic enemy entity
- [x] Enemy manager
- [x] Enemy movement toward the player
- [x] Basic on-screen debug bullet count
- [ ] Bullet/enemy collision
- [ ] Enemy damage
- [ ] Player health
- [ ] Death/game-over state
- [ ] Enemy spawning waves
- [ ] Score tracking
- [ ] Restart flow
- [ ] Gameplay UI
- [ ] Upgrades/progression

## Roadmap Progress

### Phase 0: Lua Fundamentals

**Status:** Complete enough to move forward.

Completed learning/practice areas include basic Lua project organization, modules, tables, metatable-based object patterns, and utility modules.

### Phase 1: LOVE2D Fundamentals

**Status:** In progress, with the core prototype milestone mostly implemented.

Implemented Phase 1 items:

- LOVE2D game loop using `love.load`, `love.update`, and `love.draw`
- Keyboard input for WASD movement
- Mouse input for aiming and shooting
- Delta-time based movement
- Basic shape rendering
- Basic UI/debug text
- Bullet spawning, movement, and cleanup
- Enemy prototype that moves toward the player

Remaining Phase 1 polish/learning opportunities:

- Add basic sounds or image loading experiments
- Tighten the prototype into a cleaner milestone build
- Confirm shooting and enemy behavior feel good before moving into combat systems

### Phase 2: Core Vertical Slice

**Status:** Not started yet.

Next development focus:

1. Add bullet/enemy collision.
2. Add enemy health, damage, and death.
3. Add player health and enemy contact damage.
4. Add enemy spawning.
5. Add score tracking.
6. Add game-over and restart flow.
7. Add basic health/score UI.

## Project Structure

```text
.
├── conf.lua
├── main.lua
├── stylua.toml
├── docs/
│   ├── dev-log.md
│   ├── game-design.md
│   └── roadmap.md
└── src/
    ├── entities/
    │   ├── bullet.lua
    │   ├── enemy.lua
    │   └── player.lua
    ├── managers/
    │   ├── bullet_manager.lua
    │   └── enemy_manager.lua
    └── utils/
        ├── graphics.lua
        └── vector.lua
```

## How to Run

1. Install [LÖVE](https://love2d.org/).
2. From the repository root, run:

```sh
love .
```

## Controls

| Action | Input |
| --- | --- |
| Move | `W`, `A`, `S`, `D` |
| Aim | Mouse position |
| Shoot | Left mouse button |

## Development Tools

This project uses [StyLua](https://github.com/JohnnyMorganz/StyLua) for Lua formatting. Formatting preferences are stored in [`stylua.toml`](stylua.toml).

If StyLua is installed, format the project with:

```sh
stylua .
```

## Design Direction

The intended first publishable scope is a small arena survival shooter inspired by games like Vampire Survivors, Brotato, and Crimsonland. The guiding principle is:

> Build the smallest complete game first. Every new feature should improve an already-playable game.

## Suggested Next Tasks

- Implement circle-based bullet/enemy collision.
- Remove or damage enemies when hit by bullets.
- Add player health and enemy contact damage.
- Add timed enemy spawning instead of a single starting enemy.
- Add a simple game-over screen and restart key.
- Replace debug text with basic gameplay UI.
