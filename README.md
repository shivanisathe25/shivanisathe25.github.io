# Shivani Waikar - Technical Writer Portfolio

A modern, developer-style portfolio website showcasing technical writing expertise, built with vanilla HTML, CSS, and JavaScript.

## 🚀 Features

- **Dark Developer Theme** with animated gradient background
- **Fully Responsive** - works on all devices
- **Smooth Animations** - scroll effects, hover states, particle background
- **ATS-Friendly Design** - clean, accessible structure
- **Fast Loading** - no frameworks, minimal dependencies

## 📁 Project Structure

```
portfolio-site/
├── index.html          # Main HTML file
├── style.css           # Styling and animations
├── script.js           # Interactive features
└── README.md           # This file
```

## 🌐 Deploying to GitHub Pages

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `shivanisathe25.github.io` (IMPORTANT: use this exact format with your username)
3. Set to **Public**
4. Click "Create repository"

### Step 2: Upload Files

**Option A: Using Git (Recommended)**

```bash
# Navigate to your portfolio folder
cd /home/ssathe/portfolio-site

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Portfolio website"

# Add remote (replace with your repo URL)
git remote add origin https://github.com/shivanisathe25/shivanisathe25.github.io.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Option B: Using GitHub Web Interface**

1. Go to your repository
2. Click "Add file" → "Upload files"
3. Drag and drop: `index.html`, `style.css`, `script.js`
4. Commit changes

### Step 3: Enable GitHub Pages

1. Go to repository Settings
2. Scroll to "Pages" (left sidebar)
3. Under "Source", select `main` branch
4. Click "Save"
5. Wait 2-3 minutes
6. Your site will be live at: `https://shivanisathe25.github.io`

## ✏️ Customization

### Update Content

**Personal Info:**
- Edit `index.html` lines 35-40 (hero section)
- Update email/LinkedIn/GitHub links (lines 235-250)

**Portfolio Samples:**
- Add real work samples by editing portfolio cards (lines 170-220)
- Replace placeholder links with actual documentation

**About Section:**
- Modify bio text (lines 70-80)

### Change Colors

Edit `style.css` variables (lines 8-15):

```css
:root {
    --bg-primary: #0a0e27;        /* Main background */
    --accent-primary: #00d9ff;    /* Accent color */
    --accent-secondary: #7c3aed;  /* Secondary accent */
}
```

### Add Resume Download

1. Add your resume PDF to the repository
2. Update the "Download Resume" button:
   ```html
   <a href="resume.pdf" download class="btn btn-secondary">Download Resume</a>
   ```

## 🔧 Local Development

Open `index.html` in a browser to preview locally:

```bash
# Simple Python server (if you have Python)
python3 -m http.server 8000

# Then open: http://localhost:8000
```

Or just double-click `index.html` to open in browser.

## 📱 Responsive Breakpoints

- **Desktop**: 1200px+
- **Tablet**: 768px - 1199px
- **Mobile**: < 768px

## 🎨 Design Features

- **Animated gradient background** with particles
- **Glitch effect** on hero title
- **Smooth scroll** navigation
- **Intersection Observer** for fade-in animations
- **Hover effects** on all interactive elements

## 🐛 Troubleshooting

**Site not showing up?**
- Check GitHub Pages is enabled (Settings → Pages)
- Ensure repository name is `username.github.io`
- Wait 5-10 minutes for deployment

**Broken links?**
- Make sure all file names match exactly
- Check that files are in the same directory

**Want custom domain?**
- Buy domain (e.g., shivaniwaikar.com)
- Add CNAME file with your domain
- Update DNS settings (A records to GitHub IPs)

## 📄 License

Free to use and modify for personal portfolios.

## 📧 Contact

Questions? Reach out at shivaniwaikar25@gmail.com

---

Built with ❤️ using HTML, CSS, and vanilla JavaScript
