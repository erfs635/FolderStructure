#!/bin/bash

# This script creates a generic folder structure for any game project.
# Usage: ./create_structure.sh ProjectName

PROJECT_NAME="$1"

# Check if the project name was provided
if [ -z "$PROJECT_NAME" ]; then
    echo "Error: Please provide a project name."
    echo "Usage: ./create_structure.sh ProjectName"
    exit 1
fi

# Create the main folder and subfolders
echo "Creating generic folder structure for project '$PROJECT_NAME'..."

# Assets Folders
mkdir -p "$PROJECT_NAME"/Assets/Audio/{Music,SFX}
mkdir -p "$PROJECT_NAME"/Assets/Art/{Sprites_Textures,3D_Models,Shaders}
mkdir -p "$PROJECT_NAME"/Assets/Fonts

# Scenes Folders
mkdir -p "$PROJECT_NAME"/Scenes/Levels
mkdir -p "$PROJECT_NAME"/Scenes/Prefabs_Blueprints/{Player,Enemies,UI}

# Scripts Folders
mkdir -p "$PROJECT_NAME"/Scripts/{Core,Gameplay,UI}

# Success message
echo "Folder structure for project '$PROJECT_NAME' created successfully!"
echo "You can start working in the '$PROJECT_NAME' directory."