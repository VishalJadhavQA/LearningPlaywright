@echo off
echo Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo Git is not installed or not in PATH. Please install Git and try again.
    pause
    exit /b %errorlevel%
)

git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/VishalJadhavQA/LearningPlaywright.git
git push -u origin main

echo Done!
pause
