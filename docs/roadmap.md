# Top-Down Shooter Learning & Development Roadmap

## Project Goals

This project aims to:

- Learn Lua
- Learn LOVE2D
- Learn game development fundamentals
- Build a polished, potentially publishable game
- Practice software engineering and project management skills

---

# Phase 0: Lua Fundamentals

**Estimated Time:** 1–2 weeks

## Objectives

Become comfortable writing and reading Lua code without relying heavily on tutorials.

## Topics

- Variables
- Functions
- Conditionals
- Loops
- Tables
- Modules (`require`)
- Scope (`local`)
- Basic object-oriented programming patterns
- File organization

## Practice Exercises

- Number guessing game
- Text-based combat simulator
- Inventory system using tables
- Simple stat calculator

## Milestone

You can confidently create and organize a small Lua project.

---

# Phase 1: LOVE2D Fundamentals

**Estimated Time:** 1–2 weeks

## Objectives

Understand the LOVE2D framework and game loop.

## Topics

- `love.load`
- `love.update`
- `love.draw`
- Keyboard input
- Mouse input
- Delta time (`dt`)
- Drawing shapes
- Loading images
- Playing sounds
- Basic UI text

## Exercises

### Player Movement

- WASD movement
- Frame-rate independent movement

### Mouse Aiming

- Rotate player toward cursor

### Shooting

- Spawn bullets
- Move bullets
- Remove bullets when off-screen

### Enemy Prototype

- Spawn enemy
- Enemy moves toward player

## Milestone

A simple prototype where:

- Player moves
- Player shoots
- Enemy chases player

---

# Phase 2: Core Vertical Slice

**Estimated Time:** 2–4 weeks

## Objectives

Build the smallest complete version of the game.

## Features

### Player

- Movement
- Mouse aiming
- Shooting

### Enemies

- Chase player
- Deal damage

### Combat

- Health
- Damage
- Death

### Game Loop

- Enemy spawning
- Score tracking
- Restarting after death

### UI

- Health bar
- Score display

## Milestone

A fully playable game loop:

```text
Start
→ Survive
→ Kill Enemies
→ Die
→ Restart
```

No polish required.

---

# Phase 3: Project Architecture

**Estimated Time:** 2–3 weeks

## Objectives

Refactor the prototype into maintainable code.

## Topics

### Project Structure

```text
src/
├── core/
├── entities/
├── systems/
├── states/
├── ui/
└── utils/
```

### Design Concepts

- State management
- Entity management
- Separation of concerns
- Reusable systems

### Patterns to Study

- State Machine
- Event Systems
- Object-oriented Lua
- ECS (optional)

## Milestone

The game functions exactly as before but with cleaner code.

---

# Phase 4: Gameplay Expansion

**Estimated Time:** 1–2 months

## Objectives

Transform the prototype into an actual game.

## Weapons

### Pistol

- Baseline weapon

### Shotgun

- Multiple projectiles
- Spread pattern

### SMG

- High fire rate
- Lower damage

## Enemy Types

### Basic Enemy

- Standard movement

### Fast Enemy

- High speed
- Low health

### Tank Enemy

- Slow
- High health

### Ranged Enemy

- Shoots projectiles

## Progression

- Experience points
- Level-ups
- Upgrade system

Example upgrades:

- +10% damage
- +20% fire rate
- +1 projectile
- Faster movement

## Milestone

The game becomes replayable.

---

# Phase 5: Game Feel & Feedback

**Estimated Time:** 2–4 weeks

## Objectives

Make the game feel satisfying to play.

## Topics

### Visual Feedback

- Screen shake
- Hit flashes
- Particle effects
- Weapon recoil

### Audio Feedback

- Gun sounds
- Enemy death sounds
- Damage sounds

### UI Feedback

- Damage numbers
- Upgrade notifications
- Animated UI

### Animation

- Sprite animation
- Tweening

## Milestone

Actions feel impactful and responsive.

---

# Phase 6: Asset Pipeline

**Estimated Time:** 2–3 weeks

## Objectives

Replace placeholders with real assets.

## Art

- Temporary placeholder art
- Consistent visual style
- Sprite organization

## Audio

- Sound effects
- Background music
- Volume controls

## UI

- Fonts
- Icons
- Consistent styling

## Milestone

The game looks and sounds cohesive.

---

# Phase 7: Advanced Systems

**Estimated Time:** 1–2 months

## Objectives

Add depth and long-term engagement.

## Possible Features

### Boss Encounters

- Unique attacks
- Multiple phases

### Meta Progression

- Unlockables
- Permanent upgrades

### Procedural Systems

- Dynamic waves
- Difficulty scaling

### Statistics

- Lifetime kills
- Best runs
- Weapon usage

### Save System

- Settings
- Progress
- Unlocks

## Milestone

The game offers meaningful long-term progression.

---

# Phase 8: Optimization & Technical Improvements

**Estimated Time:** 2–4 weeks

## Objectives

Improve performance and maintainability.

## Topics

### Profiling

- Identify bottlenecks
- Monitor FPS

### Memory Management

- Garbage collection awareness
- Object pooling

### Debugging

- Debug overlays
- Logging tools

### Data-Driven Design

Example:

```lua
weapons = {
    pistol = {
        damage = 10,
        fireRate = 0.3
    }
}
```

## Milestone

The game remains stable as content grows.

---

# Phase 9: Production & Polish

**Estimated Time:** 1–2 months

## Objectives

Prepare for public release.

## Menus

- Main menu
- Pause menu
- Settings menu

## Accessibility

- Volume controls
- Rebindable keys
- Resolution settings

## Quality Assurance

- Bug fixing
- Balance testing
- User feedback

## Polish

- Visual effects
- Better UI
- Audio improvements

## Milestone

The game feels complete.

---

# Phase 10: Publishing

**Estimated Time:** 2–4 weeks

## Objectives

Release the game publicly.

## Release Preparation

- Package builds
- Create screenshots
- Record trailer
- Write store description

## Platforms

### itch.io

Recommended first release platform.

### Steam

Optional future release.

## Post-Launch

- Collect feedback
- Fix critical bugs
- Plan updates

## Milestone

Public release.

---

# Development Order

Build features in this order:

```text
Movement
↓
Mouse Aiming
↓
Shooting
↓
Enemies
↓
Health
↓
Enemy Spawning
↓
Game Over
↓
Weapon Variety
↓
Enemy Variety
↓
Progression
↓
Visual Feedback
↓
Content
↓
Publishing
```

---

# Suggested First Publishable Scope

## Arena Survival Shooter

Inspired by:

- Vampire Survivors
- Brotato
- Crimsonland

## Target Scope

### Weapons

- 3–5 weapons

### Enemies

- 5 enemy types

### Bosses

- 1–2 bosses

### Upgrades

- 20–30 upgrades

### Runs

- 15–30 minutes

## Success Criteria

A player can:

1. Start a run
2. Fight waves of enemies
3. Earn upgrades
4. Defeat bosses
5. Complete or fail the run
6. Want to play again

---

# Core Principle

> Build the smallest complete game first.
>
> Every new feature should improve an already-playable game.
>
> A finished small game teaches more than an unfinished large game.