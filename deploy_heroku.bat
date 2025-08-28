@echo off
echo 🚀 Starting Heroku deployment...

REM Check if Heroku CLI is installed
heroku --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Heroku CLI is not installed. Please install it first:
    echo    https://devcenter.heroku.com/articles/heroku-cli
    pause
    exit /b 1
)

REM Check if user is logged in
heroku auth:whoami >nul 2>&1
if errorlevel 1 (
    echo ❌ Please login to Heroku first:
    echo    heroku login
    pause
    exit /b 1
)

REM Get app name from user
set /p app_name="📝 Enter your Heroku app name (or press Enter to auto-generate): "

if "%app_name%"=="" (
    echo 🔧 Creating new Heroku app...
    heroku create
) else (
    echo 🔧 Creating Heroku app: %app_name%
    heroku create %app_name%
)

REM Add all files to git
echo 📁 Adding files to git...
git add .

REM Commit changes
echo 💾 Committing changes...
git commit -m "Deploy phishing detection app"

REM Push to Heroku
echo 🚀 Deploying to Heroku...
git push heroku main

REM Open the app
echo 🌐 Opening your app...
heroku open

echo ✅ Deployment complete!
echo.
echo 📊 To view logs: heroku logs --tail
echo 🔧 To restart: heroku restart
pause
