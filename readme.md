# Game Project Folder Structure (with Automation Script)

This document outlines a modular and scalable folder structure designed to keep any game project organized and manageable, regardless of the chosen game engine (e.g., Unity, Unreal Engine, Godot).

An accompanying shell script (`create_structure.sh`) is provided in this repository to automate the creation of this entire structure, allowing you to start your project with a clean foundation instantly.

## The Folder Structure

The script generates the following directory organization:

```
ProjectName/
├── Assets
│   ├── Audio
│   │   ├── Music
│   │   └── SFX
│   │
│   ├── Art
│   │   ├── Sprites_Textures
│   │   ├── 3D_Models
│   │   └── Shaders
│   │
│   └── Fonts
│
├── Scenes
│   ├── Levels
│   │
│   └── Prefabs_Blueprints
│       ├── Player
│       ├── Enemies
│       └── UI
│
└── Scripts (or Source)
    ├── Core
    ├── Gameplay
    └── UI
```

## Folder Descriptions and Purpose

### 📂 Assets/

This top-level folder stores all the "raw" media files your project uses. These are the resources you import into the engine.

- **Audio**: All sound files.
- **Art**: All visual assets (2D sprites, 3D models, shaders, etc.).
- **Fonts**: Font files for the user interface.

### 📂 Scenes/

This folder contains engine-specific files that represent "assembled objects." They combine assets and scripts to create entities within your game.

- **Levels**: Each file here is a complete level, map, or stage.
- **Prefabs_Blueprints**: Reusable, pre-configured game objects (e.g., Player, Enemies, UI elements).

### 📂 Scripts (or Source)/

This folder is dedicated exclusively to your source code files (e.g., C\#, C++, GDScript).

- **Core**: Essential scripts that manage the game at a high level (e.g., `GameManager`, `SceneLoader`).
- **Gameplay**: Contains all the logic that defines how the game is played (e.g., `PlayerController`, `EnemyAI`).
- **UI**: Scripts that control the behavior of user interface elements.

---

## 🚀 Automating Setup with the Script

This repository includes a script named `create_structure.sh` to generate the structure automatically. Follow the instructions for your operating system.

### For Linux and macOS

**1. Download the Script:**
First, ensure you have the `create_structure.sh` file on your computer. You can download it or clone this repository.

**2. Open Your Terminal:**
Navigate to the directory where you saved the script.

**3. Make the Script Executable:**
You only need to do this once. This command gives your system permission to run the file.

```bash
chmod +x create_structure.sh
```

**4. Run the Script:**
Execute the script, passing your desired project name as an argument.

```bash
./create_structure.sh MyAwesomeGame
```

A new folder named `MyAwesomeGame` will be created with the complete structure inside.

### For Windows

Running shell scripts (`.sh`) on Windows requires a special terminal that can understand Linux commands. The recommended tool is **Git Bash**, which comes included with [Git for Windows](https://git-scm.com/download/win).

**1. Download the Script:**
First, ensure you have the `create_structure.sh` file on your computer.

**2. Open Git Bash:**
Navigate to the folder where you saved the script. Right-click inside the folder and select "**Git Bash Here**".

**3. Run the Script:**
The command is the same as on Linux. Type it into the Git Bash terminal:

```bash
./create_structure.sh MyAwesomeGame
```

A new folder named `MyAwesomeGame` will be created. You do not typically need to run `chmod` when using Git Bash.
