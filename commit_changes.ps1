# PowerShell Script to automate 20 small commits for Gemly project

$file = "index-jewelry.html"
$readme = "README.md"

function Commit-Change {
    param($msg)
    git add .
    git commit -m $msg
    Write-Host "Committed: $msg" -ForegroundColor Green
}

# 1. Update Keywords
(Get-Content $file).Replace('content="Creative, modern, clean, bootstrap responsive, html5, css3, portfolio, blog, studio, templates, multipurpose, one page, corporate, start-up, studio, branding, designer, freelancer, carousel, parallax, photography, studio, masonry, grid, faq"', 'content="Luxury Jewelry, Diamond Rings, Gold Bracelets, Premium Jewelry Store, Bridal Collection, Elegant Gems"') | Set-Content $file
Commit-Change "Update meta keywords with specific jewelry terms"

# 2. Add OG URL
(Get-Content $file).Replace('<meta property="og:type" content="website" />', '<meta property="og:type" content="website" />' + "`n" + '    <meta property="og:url" content="https://gemly.com" />') | Set-Content $file
Commit-Change "Add Open Graph URL meta tag"

# 3. Add OG Image
(Get-Content $file).Replace('<meta property="og:url" content="https://gemly.com" />', '<meta property="og:url" content="https://gemly.com" />' + "`n" + '    <meta property="og:image" content="https://gemly.com/jewelry/img/logo-black.png" />') | Set-Content $file
Commit-Change "Add Open Graph image meta tag"

# 4. Add OG Description
(Get-Content $file).Replace('<meta property="og:image" content="https://gemly.com/jewelry/img/logo-black.png" />', '<meta property="og:image" content="https://gemly.com/jewelry/img/logo-black.png" />' + "`n" + '    <meta property="og:description" content="Explore Gemly''s premium jewelry collection." />') | Set-Content $file
Commit-Change "Add Open Graph description meta tag"

# 5. Add Twitter Card Type
(Get-Content $file).Replace('<!-- Page Title -->', '<!-- Twitter -->' + "`n" + '    <meta name="twitter:card" content="summary_large_image" />' + "`n" + '    <!-- Page Title -->') | Set-Content $file
Commit-Change "Add Twitter Card type"

# 6. Add Twitter site
(Get-Content $file).Replace('<meta name="twitter:card" content="summary_large_image" />', '<meta name="twitter:card" content="summary_large_image" />' + "`n" + '    <meta name="twitter:site" content="@gemly_jewelry" />') | Set-Content $file
Commit-Change "Add Twitter site handle"

# 7. Add Twitter title
(Get-Content $file).Replace('<meta name="twitter:site" content="@gemly_jewelry" />', '<meta name="twitter:site" content="@gemly_jewelry" />' + "`n" + '    <meta name="twitter:title" content="Gemly | Premium Jewelry Store" />') | Set-Content $file
Commit-Change "Add Twitter title meta tag"

# 8. Add Twitter description
(Get-Content $file).Replace('<meta name="twitter:title" content="Gemly | Premium Jewelry Store" />', '<meta name="twitter:title" content="Gemly | Premium Jewelry Store" />' + "`n" + '    <meta name="twitter:description" content="Modern and elegant jewelry designs." />') | Set-Content $file
Commit-Change "Add Twitter description meta tag"

# 9. Add Robots meta tag
(Get-Content $file).Replace('<!-- Meta Tags -->', '<!-- Meta Tags -->' + "`n" + '    <meta name="robots" content="index, follow" />') | Set-Content $file
Commit-Change "Add Robots indexing meta tag"

# 10. Add Canonical Link
(Get-Content $file).Replace('<link rel="icon" href="jewelry/img/favicon.ico" />', '<link rel="canonical" href="https://gemly.com" />' + "`n" + '    <link rel="icon" href="jewelry/img/favicon.ico" />') | Set-Content $file
Commit-Change "Add Canonical link tag"

# 11. Update Nav comment
(Get-Content $file).Replace('<!--    NAVBAR FOR LARGE SCREEN-->', '<!-- Main Desktop Navigation -->') | Set-Content $file
Commit-Change "Update navigation comment for clarity"

# 12. Fix Logo Alt text
(Get-Content $file).Replace('alt="Logo Img "', 'alt="Gemly Premium Jewelry Logo"') | Set-Content $file
Commit-Change "Improve descriptive alt text for logo"

# 13. Add ARIA for Search
(Get-Content $file).Replace('<i class="las la-search icons"></i>', '<i class="las la-search icons" aria-label="Search"></i>') | Set-Content $file
Commit-Change "Add ARIA label to search icon"

# 14. Add ARIA for Cart
(Get-Content $file).Replace('<i class="las la-shopping-cart icons"></i>', '<i class="las la-shopping-cart icons" aria-label="Shopping Cart"></i>') | Set-Content $file
Commit-Change "Add ARIA label to shopping cart icon"

# 15. More keywords
(Get-Content $file).Replace('content="Luxury Jewelry, Diamond Rings, Gold Bracelets, Premium Jewelry Store, Bridal Collection, Elegant Gems"', 'content="Luxury Jewelry, Diamond Rings, Gold Bracelets, Premium Jewelry Store, Bridal Collection, Elegant Gems, Luxury Gifts, Wedding Jewelry"') | Set-Content $file
Commit-Change "Expand meta keywords list"

# 16. Style Sheet Comment
(Get-Content $file).Replace('<!-- Style Sheet -->', '<!-- Custom Theme Styles -->') | Set-Content $file
Commit-Change "Update style sheet comment"

# 17. Preloader Comment
(Get-Content $file).Replace('<!--  PRELOADER  -->', '<!-- Site Preloader Animation -->') | Set-Content $file
Commit-Change "Update preloader comment for consistency"

# 18. README update - Description
"Gemly - Premium Jewelry Store Template`n`nA modern and elegant HTML5 template for luxury jewelry businesses." | Set-Content $readme
Commit-Change "Update README with project description"

# 19. README update - Features
Add-Content $readme "`n`n## Features`n- Modern Design`n- Fully Responsive`n- Optimized SEO`n- Luxury Aesthetics"
Commit-Change "Add features list to README"

# 20. README update - Setup
Add-Content $readme "`n`n## Installation`nJust open index-jewelry.html in your browser."
Commit-Change "Add installation instructions to README"

Write-Host "Success! 20 small commits have been processed." -ForegroundColor Cyan
