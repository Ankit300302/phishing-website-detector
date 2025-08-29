#!/bin/bash

# Phishing Detection App - Heroku Deployment Script

echo "🚀 Starting Heroku deployment..."

# Check if Heroku CLI is installed
if ! command -v heroku &> /dev/null; then
    echo "❌ Heroku CLI is not installed. Please install it first:"
    echo "   https://devcenter.heroku.com/articles/heroku-cli"
    exit 1
fi

# Check if user is logged in
if ! heroku auth:whoami &> /dev/null; then
    echo "❌ Please login to Heroku first:"
    echo "   heroku login"
    exit 1
fi

# Get app name from user
echo "📝 Enter your Heroku app name (or press Enter to auto-generate):"
read app_name

if [ -z "$app_name" ]; then
    echo "🔧 Creating new Heroku app..."
    heroku create
else
    echo "🔧 Creating Heroku app: $app_name"
    heroku create $app_name
fi

# Get the app name from Heroku
APP_NAME=$(heroku apps:info --json | grep -o '"name":"[^"]*"' | cut -d'"' -f4)
echo "✅ App created: $APP_NAME"

# Add all files to git
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy phishing detection app"

# Push to Heroku
echo "🚀 Deploying to Heroku..."
git push heroku main

# Open the app
echo "🌐 Opening your app..."
heroku open

echo "✅ Deployment complete!"
echo "🔗 Your app is available at: https://$APP_NAME.herokuapp.com"
echo ""
echo "📊 To view logs: heroku logs --tail"
echo "🔧 To restart: heroku restart"
echo "🗑️  To delete app: heroku apps:destroy $APP_NAME --confirm $APP_NAME"

