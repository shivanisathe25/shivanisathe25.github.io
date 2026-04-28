#!/bin/bash

# Portfolio Deployment Script for GitHub Pages
# This script helps you deploy your portfolio to GitHub Pages

echo "========================================="
echo "  Portfolio Deployment to GitHub Pages"
echo "========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Check if in correct directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Run this script from the portfolio-site directory."
    exit 1
fi

echo "✅ Prerequisites checked"
echo ""

# Initialize git if not already
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

# Ask for GitHub username if not set
read -p "Enter your GitHub username (shivanisathe25): " github_user
github_user=${github_user:-shivanisathe25}

# Set repository URL
repo_url="https://github.com/$github_user/$github_user.github.io.git"

echo ""
echo "Repository URL: $repo_url"
echo ""

# Add files
echo "📝 Adding files..."
git add .

# Commit
read -p "Enter commit message (or press Enter for default): " commit_msg
commit_msg=${commit_msg:-"Update portfolio website"}

git commit -m "$commit_msg"
echo "✅ Files committed"

# Check if remote exists
if git remote | grep -q "origin"; then
    echo "✅ Remote 'origin' already exists"
else
    echo "🔗 Adding remote..."
    git remote add origin $repo_url
    echo "✅ Remote added"
fi

# Set main branch
git branch -M main

# Push to GitHub
echo ""
echo "🚀 Pushing to GitHub..."
echo "⚠️  You may be prompted for GitHub credentials"
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================="
    echo "  ✅ Deployment Successful!"
    echo "========================================="
    echo ""
    echo "Your portfolio will be live at:"
    echo "🌐 https://$github_user.github.io"
    echo ""
    echo "⏰ Note: It may take 2-5 minutes for changes to appear"
    echo ""
    echo "Next steps:"
    echo "1. Go to https://github.com/$github_user/$github_user.github.io/settings/pages"
    echo "2. Ensure 'Source' is set to 'main' branch"
    echo "3. Wait a few minutes and visit your site!"
else
    echo ""
    echo "❌ Deployment failed. Common issues:"
    echo ""
    echo "1. Repository doesn't exist:"
    echo "   → Create it at: https://github.com/new"
    echo "   → Name: $github_user.github.io"
    echo "   → Make it Public"
    echo ""
    echo "2. Authentication failed:"
    echo "   → Generate a Personal Access Token at:"
    echo "   → https://github.com/settings/tokens"
    echo "   → Use token as password when prompted"
    echo ""
    echo "3. Remote URL wrong:"
    echo "   → Check your GitHub username is correct"
fi
