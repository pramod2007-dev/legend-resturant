/* Legend Restaurant - Premium Stylesheet
   Luxury Black, Gold & Red Theme
   Mobile-First Responsive Design */

:root {
    /* Primary Colors */
    --color-black: #0a0a0a;
    --color-dark: #1a1a1a;
    --color-gold: #D4AF37;
    --color-gold-light: #F4D03F;
    --color-red: #DC2626;
    --color-red-dark: #991B1B;
    
    /* Light Mode Colors */
    --color-white: #ffffff;
    --color-gray-100: #f3f4f6;
    --color-gray-200: #e5e7eb;
    --color-gray-800: #1f2937;
    
    /* Gradients */
    --gradient-dark: linear-gradient(135deg, var(--color-black) 0%, #1f1f1f 100%);
    --gradient-gold: linear-gradient(135deg, var(--color-gold) 0%, var(--color-gold-light) 100%);
    
    /* Typography */
    --font-primary: 'Playfair Display', serif;
    --font-secondary: 'Inter', sans-serif;
    
    /* Spacing */
    --section-padding: 6rem 0;
    --container-max: 1400px;
    
    /* Shadows */
    --shadow-lg: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
    --shadow-gold: 0 0 30px rgba(212, 175, 55, 0.3);
    
    /* Transitions */
    --transition-fast: 0.3s ease;
    --transition-slow: 0.6s cubic-bezier(0.4, 0, 0.2, 1);
}

/* Light Mode Variables */
[data-theme="light"] {
    --color-bg: var(--color-white);
    --color-bg-secondary: var(--color-gray-100);
    --color-text: var(--color-gray-800);
    --color-text-secondary: #4b5563;
    --color-border: var(--color-gray-200);
    --card-bg: var(--color-white);
    --navbar-bg: rgba(255, 255, 255, 0.95);
}

/* Dark Mode Variables (Default) */
:root {
    --color-bg: var(--color-black);
    --color-bg-secondary: var(--color-dark);
    --color-text: var(--color-white);
    --color-text-secondary: #9ca3af;
    --color-border: #2a2a2a;
    --card-bg: var(--color-dark);
    --navbar-bg: rgba(10, 10, 10, 0.95);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
    font-size: 16px;
}

body {
    font-family: var(--font-secondary);
    background-color: var(--color-bg);
    color: var(--color-text);
    line-height: 1.6;
    overflow-x: hidden;
    transition: background-color var(--transition-slow), color var(--transition-slow);
}

h1, h2, h3, h4, h5, h6 {
    font-family: var(--font-primary);
    font-weight: 700;
    line-height: 1.2;
}

a {
    text-decoration: none;
    color: inherit;
    transition: color var(--transition-fast);
}

img {
    max-width: 100%;
    height: auto;
    display: block;
}

.container {
    max-width: var(--container-max);
    margin: 0 auto;
    padding: 0 1.5rem;
}

/* Scrollbar Styling */
::-webkit-scrollbar {
    width: 10px;
}

::-webkit-scrollbar-track {
    background: var(--color-bg-secondary);
}

::-webkit-scrollbar-thumb {
    background: var(--color-gold);
    border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
    background: var(--color-gold-light);
}

/* Loading Animation */
.loader {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: var(--color-black);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
    transition: opacity 0.5s ease, visibility 0.5s ease;
}

.loader.hidden {
    opacity: 0;
    visibility: hidden;
}

.loader-content {
    text-align: center;
}

.loader-logo {
    font-family: var(--font-primary);
    font-size: 3rem;
    color: var(--color-gold);
    animation: pulse 2s infinite;
}

.loader-spinner {
    width: 50px;
    height: 50px;
    border: 3px solid rgba(212, 175, 55, 0.3);
    border-top-color: var(--color-gold);
    border-radius: 50%;
    animation: spin 1s linear infinite;
    margin: 2rem auto;
}

@keyframes spin {
    to { transform: rotate(360deg); }
}

@keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.5; transform: scale(0.95); }
}

/* Navigation */
.navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    padding: 1rem 0;
    background: transparent;
    transition: all var(--transition-fast);
}

.navbar.scrolled {
    background: var(--navbar-bg);
    backdrop-filter: blur(20px);
    box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
    padding: 0.8rem 0;
}

.navbar-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: var(--container-max);
    margin: 0 auto;
    padding: 0 1.5rem;
}

.logo {
    font-family: var(--font-primary);
    font-size: 1.8rem;
    font-weight: 700;
    color: var(--color-gold);
    text-transform: uppercase;
    letter-spacing: 2px;
}

.logo span {
    color: var(--color-red);
}

.nav-links {
    display: flex;
    gap: 2.5rem;
    list-style: none;
}

.nav-links a {
    font-weight: 500;
    font-size: 0.95rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    color: var(--color-text);
}

.nav-links a::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 0;
    height: 2px;
    background: var(--color-gold);
    transition: width var(--transition-fast);
}

.nav-links a:hover::after,
.nav-links a.active::after {
    width: 100%;
}

.nav-links a:hover {
    color: var(--color-gold);
}

.nav-controls {
    display: flex;
    gap: 1rem;
    align-items: center;
}

.btn-icon {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    border: none;
    background: transparent;
    color: var(--color-text);
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all var(--transition-fast);
    position: relative;
}

.btn-icon:hover {
    background: rgba(212, 175, 55, 0.1);
    color: var(--color-gold);
    transform: translateY(-2px);
}

.cart-count {
    position: absolute;
    top: -5px;
    right: -5px;
    background: var(--color-red);
    color: white;
    font-size: 0.7rem;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 700;
}

.mobile-menu-toggle {
    display: none;
    flex-direction: column;
    gap: 5px;
    cursor: pointer;
    z-index: 1001;
}

.mobile-menu-toggle span {
    width: 25px;
    height: 2px;
    background: var(--color-text);
    transition: all 0.3s ease;
}

/* Buttons */
.btn {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    padding: 1rem 2rem;
    font-family: var(--font-secondary);
    font-weight: 600;
    font-size: 0.95rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: all var(--transition-fast);
    position: relative;
    overflow: hidden;
}

.btn-primary {
    background: var(--color-gold);
    color: var(--color-black);
    box-shadow: 0 4px 15px rgba(212, 175, 55, 0.3);
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(212, 175, 55, 0.4);
    background: var(--color-gold-light);
}

.btn-secondary {
    background: transparent;
    color: var(--color-gold);
    border: 2px solid var(--color-gold);
}

.btn-secondary:hover {
    background: var(--color-gold);
    color: var(--color-black);
}

.btn-red {
    background: var(--color-red);
    color: white;
}

.btn-red:hover {
    background: var(--color-red-dark);
    transform: translateY(-2px);
}

.btn-large {
    padding: 1.2rem 3rem;
    font-size: 1.1rem;
}

/* Theme Toggle */
.theme-toggle {
    position: relative;
}

.sun-icon, .moon-icon {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    transition: opacity var(--transition-fast), transform var(--transition-fast);
}

[data-theme="light"] .moon-icon {
    opacity: 1;
    transform: translate(-50%, -50%) rotate(0);
}

[data-theme="light"] .sun-icon {
    opacity: 0;
    transform: translate(-50%, -50%) rotate(90deg);
}

.sun-icon {
    opacity: 1;
    transform: translate(-50%, -50%) rotate(0);
}

.moon-icon {
    opacity: 0;
    transform: translate(-50%, -50%) rotate(-90deg);
}

/* Hero Section */
.hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    overflow: hidden;
    padding-top: 80px;
}

.hero-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(rgba(10, 10, 10, 0.7), rgba(10, 10, 10, 0.8)), 
                url('https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80') center/cover;
    filter: brightness(0.6);
    z-index: -1;
}

.hero-content {
    text-align: center;
    max-width: 900px;
    padding: 2rem;
    z-index: 1;
}

.hero-badge {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    background: rgba(212, 175, 55, 0.2);
    border: 1px solid var(--color-gold);
    color: var(--color-gold);
    padding: 0.5rem 1.5rem;
    border-radius: 50px;
    font-size: 0.9rem;
    font-weight: 600;
    margin-bottom: 2rem;
    opacity: 0;
    animation: fadeInUp 0.8s forwards;
    animation-delay: 0.2s;
}

.hero-badge .stars {
    color: var(--color-gold);
}

.hero-title {
    font-size: clamp(2.5rem, 8vw, 5rem);
    margin-bottom: 1.5rem;
    line-height: 1.1;
    opacity: 0;
    animation: fadeInUp 0.8s forwards;
    animation-delay: 0.4s;
}

.hero-title .highlight {
    color: var(--color-gold);
    display: block;
    font-size: 0.6em;
    letter-spacing: 0.2em;
    text-transform: uppercase;
    margin-bottom: 0.5rem;
}

.hero-description {
    font-size: 1.25rem;
    color: var(--color-text-secondary);
    margin-bottom: 3rem;
    opacity: 0;
    animation: fadeInUp 0.8s forwards;
    animation-delay: 0.6s;
}

.hero-buttons {
    display: flex;
    gap: 1rem;
    justify-content: center;
    flex-wrap: wrap;
    opacity: 0;
    animation: fadeInUp 0.8s forwards;
    animation-delay: 0.8s;
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Info Bar */
.info-bar {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background: rgba(0, 0, 0, 0.8);
    backdrop-filter: blur(10px);
    border-top: 1px solid rgba(212, 175, 55, 0.3);
    padding: 2rem 0;
    z-index: 2;
}

.info-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    max-width: var(--container-max);
    margin: 0 auto;
    padding: 0 1.5rem;
}

.info-item {
    display: flex;
    align-items: center;
    gap: 1rem;
    padding: 1rem;
    border-right: 1px solid rgba(255, 255, 255, 0.1);
}

.info-item:last-child {
    border-right: none;
}

.info-icon {
    width: 50px;
    height: 50px;
    background: rgba(212, 175, 55, 0.1);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--color-gold);
    font-size: 1.2rem;
}

.info-content h4 {
    font-size: 0.9rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: var(--color-text-secondary);
    margin-bottom: 0.3rem;
}

.info-content p {
    font-weight: 600;
    font-size: 1.1rem;
}

/* Section Styles */
.section {
    padding: var(--section-padding);
    position: relative;
}

.section-header {
    text-align: center;
    max-width: 700px;
    margin: 0 auto 4rem;
}

.section-subtitle {
    color: var(--color-gold);
    text-transform: uppercase;
    letter-spacing: 3px;
    font-size: 0.9rem;
    font-weight: 600;
    margin-bottom: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
}

.section-subtitle::before,
.section-subtitle::after {
    content: '';
    width: 50px;
    height: 1px;
    background: var(--color-gold);
}

.section-title {
    font-size: clamp(2rem, 5vw, 3rem);
    margin-bottom: 1.5rem;
}

.section-description {
    color: var(--color-text-secondary);
    font-size: 1.1rem;
}

/* Highlights Section */
.highlights {
    background: var(--color-bg-secondary);
}

.highlights-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
}

.highlight-card {
    position: relative;
    background: var(--card-bg);
    border-radius: 12px;
    overflow: hidden;
    box-shadow: var(--shadow-lg);
    transition: transform var(--transition-fast);
    border: 1px solid var(--color-border);
}

.highlight-card:hover {
    transform: translateY(-10px);
}

.highlight-image {
    height: 250px;
    background: linear-gradient(45deg, #1a1a1a, #2a2a2a);
    position: relative;
    overflow: hidden;
}

.highlight-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform var(--transition-slow);
}

.highlight-card:hover .highlight-image img {
    transform: scale(1.1);
}

.highlight-badge {
    position: absolute;
    top: 1rem;
    right: 1rem;
    background: var(--color-red);
    color: white;
    padding: 0.3rem 0.8rem;
    border-radius: 4px;
    font-size: 0.8rem;
    font-weight: 700;
    text-transform: uppercase;
}

.highlight-content {
    padding: 2rem;
}

.highlight-content h3 {
    font-size: 1.5rem;
    margin-bottom: 0.5rem;
    color: var(--color-gold);
}

.highlight-content p {
    color: var(--color-text-secondary);
    margin-bottom: 1.5rem;
}

/* Menu Preview */
.menu-preview {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 3rem;
    align-items: start;
}

.menu-list {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
}

.menu-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1.5rem;
    background: var(--card-bg);
    border: 1px solid var(--color-border);
    border-radius: 8px;
    transition: all var(--transition-fast);
}

.menu-item:hover {
    border-color: var(--color-gold);
    transform: translateX(10px);
}

.menu-item-info h4 {
    font-size: 1.2rem;
    margin-bottom: 0.3rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.menu-item-info .description {
    font-size: 0.9rem;
    color: var(--color-text-secondary);
}

.spicy {
    color: var(--color-red);
    font-size: 0.8rem;
}

.menu-item-price {
    font-family: var(--font-primary);
    font-size: 1.5rem;
    color: var(--color-gold);
    font-weight: 700;
}

/* Gallery Preview */
.gallery-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 1rem;
    grid-auto-rows: 200px;
}

.gallery-item {
    position: relative;
    overflow: hidden;
    border-radius: 8px;
    cursor: pointer;
    border: 2px solid transparent;
    transition: all var(--transition-fast);
}

.gallery-item:hover {
    border-color: var(--color-gold);
    transform: scale(1.05);
    z-index: 2;
}

.gallery-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
}

.gallery-item:hover img {
    transform: scale(1.1);
}

.gallery-item.large {
    grid-column: span 2;
    grid-row: span 2;
}

.gallery-overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: linear-gradient(to top, rgba(0,0,0,0.9), transparent);
    padding: 2rem 1rem 1rem;
    opacity: 0;
    transition: opacity var(--transition-fast);
}

.gallery-item:hover .gallery-overlay {
    opacity: 1;
}

/* Reviews */
.reviews-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
}

.review-card {
    background: var(--card-bg);
    padding: 2rem;
    border-radius: 12px;
    border: 1px solid var(--color-border);
    transition: all var(--transition-fast);
    position: relative;
}

.review-card:hover {
    transform: translateY(-5px);
    border-color: var(--color-gold);
    box-shadow: var(--shadow-gold);
}

.google-badge {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.8rem;
    color: var(--color-text-secondary);
}

.review-stars {
    color: var(--color-gold);
    font-size: 1.1rem;
    margin-bottom: 1rem;
}

.review-text {
    font-size: 1.05rem;
    line-height: 1.8;
    margin-bottom: 1.5rem;
    font-style: italic;
}

.review-author {
    display: flex;
    align-items: center;
    gap: 1rem;
}

.author-avatar {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: var(--gradient-gold);
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 700;
    color: var(--color-black);
    font-size: 1.2rem;
}

.author-info h5 {
    font-size: 1rem;
    margin-bottom: 0.2rem;
}

.author-info span {
    font-size: 0.85rem;
    color: var(--color-text-secondary);
}

/* Contact Section */
.contact-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
}

.contact-info-list {
    display: flex;
    flex-direction: column;
    gap: 2rem;
}

.contact-item {
    display: flex;
    align-items: flex-start;
    gap: 1.5rem;
    padding: 1.5rem;
    background: var(--card-bg);
    border-radius: 8px;
    border: 1px solid var(--color-border);
    transition: all var(--transition-fast);
}

.contact-item:hover {
    border-color: var(--color-gold);
    transform: translateX(10px);
}

.contact-icon {
    width: 60px;
    height: 60px;
    background: rgba(212, 175, 55, 0.1);
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--color-gold);
    font-size: 1.5rem;
    flex-shrink: 0;
}

.contact-details h4 {
    margin-bottom: 0.5rem;
    color: var(--color-gold);
}

.contact-details p {
    color: var(--color-text-secondary);
    margin-bottom: 0.5rem;
}

.contact-map {
    grid-column: span 2;
    height: 400px;
    border-radius: 12px;
    overflow: hidden;
    border: 2px solid var(--color-border);
}

.contact-map iframe {
    width: 100%;
    height: 100%;
    border: none;
}

/* Whatsapp Float */
.whatsapp-float {
    position: fixed;
    bottom: 30px;
    right: 30px;
    width: 60px;
    height: 60px;
    background: #25D366;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    box-shadow: 0 4px 20px rgba(37, 211, 102, 0.4);
    cursor: pointer;
    z-index: 999;
    transition: all var(--transition-fast);
    animation: float 3s ease-in-out infinite;
}

.whatsapp-float:hover {
    transform: scale(1.1) translateY(-5px);
    box-shadow: 0 6px 30px rgba(37, 211, 102, 0.6);
}

@keyframes float {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-10px); }
}

/* Footer */
.footer {
    background: var(--color-dark);
    padding: 4rem 0 2rem;
    border-top: 1px solid var(--color-border);
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr repeat(3, 1fr);
    gap: 3rem;
    margin-bottom: 3rem;
}

.footer-brand p {
    color: var(--color-text-secondary);
    margin: 1.5rem 0;
    line-height: 1.8;
}

.footer-brand .logo {
    font-size: 2rem;
}

.social-links {
    display: flex;
    gap: 1rem;
}

.social-links a {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: rgba(212, 175, 55, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--color-gold);
    transition: all var(--transition-fast);
}

.social-links a:hover {
    background: var(--color-gold);
    color: var(--color-black);
    transform: translateY(-3px);
}

.footer-column h4 {
    color: var(--color-gold);
    margin-bottom: 1.5rem;
    font-size: 1.1rem;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.footer-column ul {
    list-style: none;
}

.footer-column li {
    margin-bottom: 0.8rem;
}

.footer-column a {
    color: var(--color-text-secondary);
    transition: color var(--transition-fast);
}

.footer-column a:hover {
    color: var(--color-gold);
    padding-left: 5px;
}

.footer-bottom {
    text-align: center;
    padding-top: 2rem;
    border-top: 1px solid var(--color-border);
    color: var(--color-text-secondary);
    font-size: 0.9rem;
}

/* Mobile Menu */
@media (max-width: 1024px) {
    .nav-links {
        position: fixed;
        top: 0;
        right: -100%;
        width: 80%;
        max-width: 400px;
        height: 100vh;
        background: var(--color-bg);
        flex-direction: column;
        padding: 6rem 2rem 2rem;
        gap: 2rem;
        transition: right 0.3s ease;
        border-left: 1px solid var(--color-border);
    }

    .nav-links.active {
        right: 0;
    }

    .mobile-menu-toggle {
        display: flex;
    }

    .menu-preview,
    .contact-grid {
        grid-template-columns: 1fr;
    }

    .contact-map {
        grid-column: span 1;
    }

    .footer-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .gallery-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .gallery-item.large {
        grid-column: span 2;
        grid-row: span 2;
    }
}

@media (max-width: 768px) {
    .info-bar {
        position: relative;
        margin-top: 2rem;
    }

    .hero {
        min-height: auto;
        padding-top: 100px;
        padding-bottom: 2rem;
    }

    .info-item {
        border-right: none;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .info-item:last-child {
        border-bottom: none;
    }

    .gallery-grid {
        grid-template-columns: 1fr;
    }

    .gallery-item.large {
        grid-column: span 1;
        grid-row: span 1;
    }

    .footer-grid {
        grid-template-columns: 1fr;
        text-align: center;
    }

    .social-links {
        justify-content: center;
    }
}

/* Animations */
.reveal {
    opacity: 0;
    transform: translateY(50px);
    transition: all 0.8s ease;
}

.reveal.active {
    opacity: 1;
    transform: translateY(0);
}