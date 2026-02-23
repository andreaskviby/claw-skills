# claw-skills

A comprehensive guide to the most trusted OpenClaw skills for 2026. This repository documents all 50 essential skills across 6 categories and provides an automated installation script to set up your complete OpenClaw system in one command.

## 🚀 Quick Start

Install all skills at once with the automated installer:
```bash
chmod +x install-all-skills.sh
./install-all-skills.sh
```

Or install individually using the OpenClaw CLI:
```bash
claw skill install <skill-name>
```

Or install by category:
```bash
./install-all-skills.sh --category foundation
./install-all-skills.sh --category logic
./install-all-skills.sh --category programming
./install-all-skills.sh --category design
./install-all-skills.sh --category marketing
./install-all-skills.sh --category productivity
```

---

## 🔒 Security Notice

All 50 skills have been assessed for security threats and vulnerabilities. Each skill includes a security grade:

- **🟢 A (Minimal Risk)** - Safe for all environments, no significant security concerns
- **🟡 B (Low Risk)** - Minor risks, safe with standard precautions
- **🟠 C (Moderate Risk)** - Requires careful configuration and monitoring
- **🔴 D (High Risk)** - Significant security considerations, enterprise review recommended

**📋 [View Full Security Assessment](SECURITY_ASSESSMENT.md)** - Detailed threat analysis, mitigations, and best practices for each skill.

### Key Security Recommendations
- **API Keys**: Store credentials securely using environment variables or secret vaults
- **High-Risk Skills**: Skills marked 🔴 require enterprise security review before production use
- **Code Review**: Always review AI-generated code before deployment
- **Monitoring**: Implement logging and monitoring for all skill usage
- **Compliance**: Ensure compliance with GDPR, CCPA, and relevant regulations

---

## 📚 Table of Contents

1. [The Foundation (Agent Core)](#1-the-foundation-agent-core) - 6 skills
2. [The Logic & Creative Stack](#2-the-logic--creative-stack) - 10 skills
3. [Programming & Product Building](#3-programming--product-building) - 11 skills
4. [Design & Visuals](#4-design--visuals) - 8 skills
5. [Marketing & Growth](#5-marketing--growth) - 8 skills
6. [Office Productivity](#6-office-productivity) - 7 skills

**Total: 50 Skills**

---

## 1. The Foundation (Agent Core)

If your OpenClaw feels "mid," it's not the model. It's the plumbing. Stop treating AI like a chatbot and start treating it like an OS. You don't need a bloated setup. You just need these 6 foundational "Skills" to give your agent a brain that actually has hands.

### find-skills (The Navigator) 🟡 B

**Security Grade:** Low Risk - Network dependency for skill discovery. Use trusted repositories only.

**What it does:** There are 200k+ skills out there! Don't waste time searching manually. This is the most installed skill for a reason: it lets your AI hunt down the exact tool it needs for any niche task.

**Installation:**
```bash
claw skill install find-skills
```

**Usage Examples:**
```bash
# Discover skills for specific tasks
claw ask "Find me a skill for processing PDF documents"

# Explore available skills by category
claw ask "What skills are available for SEO optimization?"

# Find alternatives to existing tools
claw ask "Show me alternatives to the docx skill"
```

**Common Use Cases:**
- Discovering new skills for specific tasks
- Exploring the skill ecosystem
- Finding alternatives to existing tools
- Researching capabilities before installation

---

### skill-creator (The Factory) 🟠 C

**Security Grade:** Moderate Risk - Code generation without security validation. Always review generated code and run security scans.

**What it does:** This is how you scale "you". It takes your unique workflows and "Vibe Coding" logic and wraps them into reusable capabilities the AI can execute on repeat.

**Installation:**
```bash
claw skill install skill-creator
```

**Usage Examples:**
```bash
# Create custom automation skills
claw ask "Create a skill that generates API documentation from code comments"

# Package your workflow as a skill
claw ask "Build a custom skill for my deployment workflow"

# Turn domain expertise into a reusable tool
claw ask "Create a skill that validates medical data according to HIPAA requirements"
```

**Common Use Cases:**
- Converting manual workflows into automated skills
- Building company-specific capabilities
- Packaging domain expertise into reusable tools
- Creating skills for repetitive tasks

---

### mcp-builder (The Bridge) 🔴 D

**Security Grade:** High Risk - Direct access to private databases and APIs. Store credentials securely, use environment variables, implement least-privilege access.

**What it does:** The MVP for 2026. It builds the servers that connect your AI to your private data and external tools via the Model Context Protocol. No bridge, no power.

**Installation:**
```bash
claw skill install mcp-builder
```

**Usage Examples:**
```bash
# Connect to databases
claw ask "Build an MCP server for my PostgreSQL database"

# Integrate with internal APIs
claw ask "Create an MCP connector for my internal REST API"

# Build data pipelines
claw ask "Set up an MCP bridge to my S3 bucket for document processing"
```

**Common Use Cases:**
- Connecting AI to private databases
- Integrating with internal tools and APIs
- Building custom data pipelines
- Creating secure access to company resources

**Prerequisites:**
- Understanding of the Model Context Protocol (MCP)
- Access credentials for the systems you want to connect

---

### using-superpowers (The Optimizer) 🟡 B

**Security Grade:** Low Risk - Capability enumeration. Implement capability-based security and principle of least privilege.

**What it does:** Most people let the AI guess. This skill forces the agent to actually understand and maximize its high-level capabilities instead of just "winging it".

**Installation:**
```bash
claw skill install using-superpowers
```

**Usage Examples:**
```bash
# Optimize agent performance
claw ask "Analyze my agent's capabilities and optimize its performance"

# Discover available capabilities
claw ask "What superpowers should I enable for building a web scraper?"

# Fine-tune behavior for specific tasks
claw ask "Optimize my agent for processing large datasets efficiently"
```

**Common Use Cases:**
- Optimizing agent performance
- Understanding available capabilities
- Fine-tuning agent behavior
- Maximizing efficiency for specific tasks

---

### subagent-driven-development (The Manager) 🟠 C

**Security Grade:** Moderate Risk - Sub-agent privilege escalation. Implement sub-agent sandboxing and code review all outputs.

**What it does:** Stop trying to do everything in one prompt. This lets your AI delegate, assigning sub-tasks to other AIs and auditing their work so you can focus on the vision, not the grind.

**Installation:**
```bash
claw skill install subagent-driven-development
```

**Usage Examples:**
```bash
# Break down complex projects
claw ask "Break down this e-commerce platform into sub-tasks and delegate them"

# Coordinate multiple agents
claw ask "Coordinate multiple agents to build this feature: user authentication with OAuth"

# Manage parallel workstreams
claw ask "Split this codebase refactoring across 3 agents working in parallel"
```

**Common Use Cases:**
- Managing complex multi-step projects
- Delegating tasks to specialized sub-agents
- Coordinating parallel workstreams
- Auditing work from multiple agents

---

### agent-tools (The Toolkit) 🟢 A

**Security Grade:** Minimal Risk - File system access. Restrict scope and validate file paths.

**What it does:** This is the digital Swiss Army knife. It equips your agent with a collection of practical utilities for everyday labor that standard models simply can't handle out of the box.

**Installation:**
```bash
claw skill install agent-tools
```

**Usage Examples:**
```bash
# File processing
claw ask "Use agent-tools to batch rename these files following a pattern"

# Text transformation
claw ask "Convert all these JSON files to YAML format"

# General automation
claw ask "What utilities are available in agent-tools for data processing?"
```

**Common Use Cases:**
- File manipulation and processing
- Text transformation and formatting
- General-purpose automation tasks
- Data conversion and cleaning

---

**Who is this for?** Solo founders, independent devs, and anyone tired of "hand-holding" their AI through every single step.

---

## 2. The Logic & Creative Stack

If your agent's output feels like robotic "filler," it's because it's missing a dedicated reflection loop. These skills turn your OpenClaw from a fast typist into a strategic partner that can stress-test its own logic before you ever see the first draft.

### brainstorming (The Ideator) 🟢 A

**Security Grade:** Minimal Risk - Ideation tool. Review generated ideas before implementation.

**What it does:** Don't settle for the first "AI-sounding" idea. This generates dozens of unique angles and "what-if" scenarios from a single keyword, giving you a massive creative head start.

**Installation:**
```bash
claw skill install brainstorming
```

**Usage Examples:**
```bash
# Generate creative angles
claw ask "Brainstorm 20 unique angles for a SaaS productivity tool"

# Explore what-if scenarios
claw ask "Generate 'what-if' scenarios for entering the AI education market"

# Rapid ideation
claw ask "Give me 50 blog post ideas about sustainable technology"
```

**Common Use Cases:**
- Generating multiple creative approaches
- Exploring different perspectives on a problem
- Rapid ideation for content or products
- Breaking through creative blocks

---

### copywriting (The Wordsmith) 🟢 A

**Security Grade:** Minimal Risk - Content generation. Human oversight for all public content.

**What it does:** This isn't just a text generator; it's an all-around player for structure and flow. It optimizes expression and refines tone without relying on those tired, "one-click" generic templates.

**Installation:**
```bash
claw skill install copywriting
```

**Usage Examples:**
```bash
# Write compelling copy
claw ask "Write landing page copy for a B2B analytics platform"

# Optimize messaging
claw ask "Refine this product description to be more persuasive"

# Adapt tone for different audiences
claw ask "Rewrite this technical content for a non-technical audience"
```

**Common Use Cases:**
- Landing page copy
- Email campaigns
- Product descriptions
- Ad copy and marketing materials

---

### systematic-debugging (The Auditor) 🟢 A

**Security Grade:** Minimal Risk - Debugging tool. Sanitize debug outputs, avoid logging sensitive data.

**What it does:** Not just for code. Use this framework to troubleshoot project plans or perform deep-dive analysis when things aren't clicking.

**Installation:**
```bash
claw skill install systematic-debugging
```

**Usage Examples:**
```bash
# Debug code issues
claw ask "Systematically debug why this API endpoint is returning 500 errors"

# Troubleshoot project issues
claw ask "Why is our user retention dropping? Debug the problem systematically"

# Analyze failures
claw ask "Perform a deep-dive analysis of why our last product launch underperformed"
```

**Common Use Cases:**
- Debugging code issues
- Troubleshooting project problems
- Root cause analysis
- Performance issue investigation

---

### writing-plans (The Architect) 🟢 A

**Security Grade:** Minimal Risk - Planning tool. Protect strategic plans appropriately.

**What it does:** Pro-level agents never start with a blank page. This forces the agent to build a structural outline and content strategy first, ensuring your "long-read" stays on track.

**Installation:**
```bash
claw skill install writing-plans
```

**Usage Examples:**
```bash
# Create content outlines
claw ask "Create a detailed plan for a 5000-word guide on API design"

# Structure complex documents
claw ask "Build an outline for a technical whitepaper on blockchain scalability"

# Plan multi-part content
claw ask "Design a content structure for a 12-part email course on marketing"
```

**Common Use Cases:**
- Planning long-form content
- Structuring complex documents
- Creating content hierarchies
- Organizing multi-part series

---

### content-strategy (The Planner) 🟢 A

**Security Grade:** Minimal Risk - Strategy tool. Protect competitive intelligence.

**What it does:** Moves you from "posting for the sake of it" to actual planning. It helps you pick topics and map out a content calendar that actually makes sense for your brand.

**Installation:**
```bash
claw skill install content-strategy
```

**Usage Examples:**
```bash
# Build content calendars
claw ask "Create a 3-month content strategy for a fintech startup blog"

# Plan strategic topics
claw ask "What topics should we cover to position ourselves as leaders in cybersecurity?"

# Map content journey
claw ask "Design a content funnel that takes users from awareness to purchase"
```

**Common Use Cases:**
- Building content calendars
- Topic selection and planning
- Content funnel design
- Brand positioning through content

---

### executing-plans (The Closer) 🟡 B

**Security Grade:** Low Risk - Automated execution. Implement approval workflows for critical tasks.

**What it does:** This turns "vague ideas" into "delivered assets." It breaks your high-level plans into actionable, multi-step tasks that the AI handles autonomously.

**Installation:**
```bash
claw skill install executing-plans
```

**Usage Examples:**
```bash
# Execute on content plans
claw ask "Execute this content plan and write all 10 blog posts"

# Implement project plans
claw ask "Take this product roadmap and build the first 3 features"

# Deliver on strategy
claw ask "Execute this marketing campaign plan across all channels"
```

**Common Use Cases:**
- Turning plans into deliverables
- Autonomous execution of strategies
- Multi-step task completion
- End-to-end project delivery

---

### marketing-ideas (The Creative Director) 🟢 A

**Security Grade:** Minimal Risk - Ideation tool. Legal review for claims and campaigns.

**What it does:** Throw it a feature or a launch date, and it uses high-level marketing frameworks to generate viral hooks and campaign concepts that go way beyond "buy my product."

**Installation:**
```bash
claw skill install marketing-ideas
```

**Usage Examples:**
```bash
# Generate campaign ideas
claw ask "Create 10 viral marketing campaign ideas for our new AI video editor"

# Design launch strategies
claw ask "Generate creative concepts for a Black Friday campaign"

# Create viral hooks
claw ask "Give me 20 attention-grabbing hooks for promoting a productivity app"
```

**Common Use Cases:**
- Campaign ideation
- Product launch strategies
- Viral content creation
- Marketing angle development

---

### copy-editing (The Senior Editor) 🟢 A

**Security Grade:** Minimal Risk - Editing tool. Preserve original intent and accuracy.

**What it does:** Think of this as your "Senior Editor." It doesn't just check for typos; it polishes the tone, tightens the flow, and ensures your unique voice (the "human" element) isn't lost in the AI generation.

**Installation:**
```bash
claw skill install copy-editing
```

**Usage Examples:**
```bash
# Polish final drafts
claw ask "Edit this article to improve flow and maintain our brand voice"

# Refine tone
claw ask "Edit this email to be more conversational yet professional"

# Improve clarity
claw ask "Tighten up this landing page copy to be more concise and impactful"
```

**Common Use Cases:**
- Final editing before publication
- Tone and voice refinement
- Improving clarity and flow
- Maintaining brand consistency

---

### social-content (The Manager) 🟡 B

**Security Grade:** Low Risk - Social automation. Human review before posting, respect platform terms of service.

**What it does:** Specialized for 2026 platforms (X, TikTok, Rednote). It takes your core ideas and automatically reformats them into platform-specific hooks designed to stop the scroll.

**Installation:**
```bash
claw skill install social-content
```

**Usage Examples:**
```bash
# Multi-platform adaptation
claw ask "Turn this blog post into social content for X, TikTok, and Instagram"

# Platform-specific hooks
claw ask "Create 10 TikTok hooks from this product announcement"

# Viral content creation
claw ask "Adapt this technical guide into bite-sized social posts for each platform"
```

**Common Use Cases:**
- Multi-platform content adaptation
- Social media post creation
- Platform-specific optimization
- Viral content design

---

### reflection (The Secret Sauce) 🟢 A

**Security Grade:** Minimal Risk - Self-review tool. Use as supplement to human review.

**What it does:** This adds a self-correction loop where the agent reviews its own work, summarizes lessons, and fixes mistakes mid-process.

**Installation:**
```bash
claw skill install reflection
```

**Usage Examples:**
```bash
# Self-review outputs
claw ask "Review the code you just wrote and identify potential improvements"

# Learn from mistakes
claw ask "Reflect on why the previous approach failed and suggest a better one"

# Continuous improvement
claw ask "Analyze your last 5 outputs and identify patterns to improve"
```

**Common Use Cases:**
- Self-reviewing outputs
- Identifying mistakes before delivery
- Continuous improvement loops
- Quality assurance automation

---

**Who is this for?** Content creators, solo founders building a personal brand, and anyone who wants to move from "blank page syndrome" to "high-volume distribution" without losing their soul.

---

## 3. Programming & Product Building

Vibe Coding is the standard for 2026, but "vibes" alone won't ship a production-grade app. These skills inject elite engineering experience and best practices into your agent, allowing you to build complex products with the speed of a solo founder and the quality of a full dev team.

### vercel-react-best-practices (The Lead Dev) 🟡 B

**Security Grade:** Low Risk - React code generation. Use security linting, implement CSP headers, regular dependency updates.

**What it does:** The gold standard for front-end development. It ensures your React code is performant, scalable, and follows the latest patterns from the Vercel ecosystem.

**Installation:**
```bash
claw skill install vercel-react-best-practices
```

**Usage Examples:**
```bash
# Build React components
claw ask "Create a dashboard component following Vercel React best practices"

# Refactor existing code
claw ask "Refactor this React component to follow modern best practices"

# Optimize performance
claw ask "Review this code and apply performance optimizations"
```

**Common Use Cases:**
- Building React applications
- Code review and refactoring
- Performance optimization
- Following modern React patterns

**Prerequisites:**
- Basic React knowledge
- Node.js and npm installed

---

### vercel-composition-patterns (The Architect) 🟡 B

**Security Grade:** Low Risk - Component generation. Validate all component inputs, use TypeScript for type safety.

**What it does:** A companion to React best practices. This skill focuses on advanced component composition, making your UI modular, reusable, and easy to maintain.

**Installation:**
```bash
claw skill install vercel-composition-patterns
```

**Usage Examples:**
```bash
# Design component architecture
claw ask "Design a composable card component system for our design system"

# Create reusable patterns
claw ask "Build a flexible form builder using composition patterns"

# Refactor for reusability
claw ask "Refactor this monolithic component into composable pieces"
```

**Common Use Cases:**
- Component architecture design
- Building design systems
- Creating reusable UI patterns
- Improving component maintainability

---

### remotion-best-practices (The Video Engineer) 🟡 B

**Security Grade:** Low Risk - Video generation. Monitor resource usage, validate inputs, use approved templates only.

**What it does:** Essential for programmatic video. It uses code-driven animation to automate your marketing assets and product demos.

**Installation:**
```bash
claw skill install remotion-best-practices
```

**Usage Examples:**
```bash
# Create video templates
claw ask "Build a Remotion template for product demo videos"

# Generate programmatic videos
claw ask "Create an animated explainer video from this script"

# Automate video production
claw ask "Set up a system to generate personalized videos for each customer"
```

**Common Use Cases:**
- Programmatic video generation
- Animated product demos
- Marketing video automation
- Data visualization videos

**Prerequisites:**
- Node.js and npm installed
- Basic understanding of React

---

### agent-browser (The Explorer) 🔴 D

**Security Grade:** High Risk - Web automation. Respect robots.txt, use only on authorized sites, legal compliance required. May violate CFAA and website terms of service.

**What it does:** Gives your AI "eyes" and "hands" to navigate the web, fill forms, scrape data, and perform automated testing.

**Installation:**
```bash
claw skill install agent-browser
```

**Usage Examples:**
```bash
# Web scraping
claw ask "Scrape all product prices from this e-commerce site"

# Form automation
claw ask "Fill out and submit this form with the provided data"

# Automated testing
claw ask "Test the checkout flow on our website and report any issues"
```

**Common Use Cases:**
- Web scraping and data extraction
- Form automation
- End-to-end testing
- Competitive research

**Security Note:** Always respect robots.txt and terms of service when scraping websites.

---

### browser-use (The Operator) 🔴 D

**Security Grade:** High Risk - Browser automation. Use only on authorized systems, implement audit logging, secure session management required.

**What it does:** A specialized automation skill that lets the AI "see" and "operate" web pages in real-time—a must-have for autonomous web agents.

**Installation:**
```bash
claw skill install browser-use
```

**Usage Examples:**
```bash
# Visual automation
claw ask "Navigate to this website and click the sign-up button"

# Complex interactions
claw ask "Complete this multi-step checkout process"

# Visual testing
claw ask "Verify that all images on this page load correctly"
```

**Common Use Cases:**
- Browser automation
- Visual regression testing
- Complex web interactions
- User flow automation

---

### vercel-react-native-skills (The Mobile Lead) 🟡 B

**Security Grade:** Low Risk - Mobile development. Follow OWASP Mobile Top 10, secure data storage, certificate pinning.

**What it does:** The go-to for cross-platform apps. It applies React Native best practices so your mobile performance doesn't lag behind your web app.

**Installation:**
```bash
claw skill install vercel-react-native-skills
```

**Usage Examples:**
```bash
# Build mobile apps
claw ask "Create a React Native login screen following best practices"

# Cross-platform development
claw ask "Build this feature for both iOS and Android"

# Performance optimization
claw ask "Optimize this React Native app for 60fps performance"
```

**Common Use Cases:**
- Mobile app development
- Cross-platform features
- Performance optimization
- Native module integration

**Prerequisites:**
- React Native development environment set up
- iOS/Android simulators or devices

---

### supabase-postgres-best-practices (The DBA) 🟠 C

**Security Grade:** Moderate Risk - Database access. Use parameterized queries only, enable RLS, regular security audits.

**What it does:** Your backend specialist. It handles schema design and PostgreSQL optimization, ensuring your data layer is rock solid.

**Installation:**
```bash
claw skill install supabase-postgres-best-practices
```

**Usage Examples:**
```bash
# Database design
claw ask "Design a PostgreSQL schema for a social media platform"

# Query optimization
claw ask "Optimize this slow query running on Supabase"

# Database architecture
claw ask "Set up row-level security policies for this multi-tenant app"
```

**Common Use Cases:**
- Database schema design
- Query optimization
- Security policy setup
- Supabase integration

**Prerequisites:**
- Supabase account (or PostgreSQL instance)
- Basic SQL knowledge

---

### next-best-practices (The Full-Stack Pro) 🟡 B

**Security Grade:** Low Risk - Next.js development. Secure API routes, environment variable management, security headers.

**What it does:** Injects the latest Next.js architecture patterns into your agent, from Server Components to optimized routing.

**Installation:**
```bash
claw skill install next-best-practices
```

**Usage Examples:**
```bash
# Build Next.js apps
claw ask "Create a blog using Next.js 14 App Router with Server Components"

# Optimize performance
claw ask "Implement ISR for this product catalog page"

# Modern patterns
claw ask "Set up this feature using Server Actions and streaming"
```

**Common Use Cases:**
- Next.js application development
- Server Component architecture
- Performance optimization
- Full-stack feature development

**Prerequisites:**
- Node.js 18+ installed
- Basic Next.js knowledge

---

### webapp-testing (The Bug Hunter) 🟡 B

**Security Grade:** Low Risk - Testing tool. Separate test environments, never test in production.

**What it does:** Automatically runs test suites, finds edge cases, and hunts down bugs across your web applications.

**Installation:**
```bash
claw skill install webapp-testing
```

**Usage Examples:**
```bash
# Generate tests
claw ask "Write comprehensive tests for this authentication module"

# Find edge cases
claw ask "Identify edge cases in this payment processing flow"

# Bug hunting
claw ask "Test this feature thoroughly and report any bugs"
```

**Common Use Cases:**
- Test suite generation
- Edge case identification
- Bug discovery
- QA automation

---

### test-driven-development (The QA) 🟢 A

**Security Grade:** Minimal Risk - Testing methodology. Include security tests in TDD approach.

**What it does:** Quality is non-negotiable. This skill forces the AI to write tests before the code, ensuring every feature is durable.

**Installation:**
```bash
claw skill install test-driven-development
```

**Usage Examples:**
```bash
# TDD workflow
claw ask "Use TDD to build a user registration system"

# Test-first development
claw ask "Write tests for this feature, then implement it"

# Quality assurance
claw ask "Ensure this module has 100% test coverage using TDD"
```

**Common Use Cases:**
- Test-driven development
- Ensuring code quality
- Preventing regressions
- Building reliable systems

---

### requesting-code-review (The Auditor) 🟢 A

**Security Grade:** Minimal Risk - Review tool. Combine automated and manual review, use trusted tools only.

**What it does:** Never ship blind. This skill lets your agent review its own code to find security holes and potential bugs before production.

**Installation:**
```bash
claw skill install requesting-code-review
```

**Usage Examples:**
```bash
# Self-review
claw ask "Review the code I just wrote and identify issues"

# Security audit
claw ask "Audit this authentication code for security vulnerabilities"

# Best practices check
claw ask "Review this PR and suggest improvements"
```

**Common Use Cases:**
- Code review automation
- Security auditing
- Best practices enforcement
- Pre-production quality checks

---

**Who is this for?** Product-focused founders and "Vibe Coders" who want to build high-quality software, automate the boring parts of development, and ship robust features in record time.

---

## 4. Design & Visuals

You don't need to be a designer to have pro-level aesthetics. These skills inject elite design theory directly into your agent, allowing you to generate everything from pixel-perfect UI components to high-fidelity marketing assets without ever touching Figma or Photoshop.

### web-design-guidelines (The Architect) 🟢 A

**Security Grade:** Minimal Risk - Design guidance. Ensure accessibility compliance.

**What it does:** Audits your frontend code against professional design principles like the 8px grid and neutral color palettes to ensure modern, consistent interfaces.

**Installation:**
```bash
claw skill install web-design-guidelines
```

**Usage Examples:**
```bash
# Design audit
claw ask "Audit this website against professional design guidelines"

# Apply design system
claw ask "Ensure this component follows the 8px grid system"

# Consistency check
claw ask "Review this UI for design consistency issues"
```

**Common Use Cases:**
- Design system audits
- Consistency enforcement
- Professional design standards
- UI/UX quality assurance

---

### frontend-design (The Artisan) 🟢 A

**Security Grade:** Minimal Risk - Design tool. Review designs for accessibility and usability.

**What it does:** Focuses on creating distinctive, production-grade web interfaces that avoid the "generic AI look" by applying bold aesthetics and refined implementation.

**Installation:**
```bash
claw skill install frontend-design
```

**Usage Examples:**
```bash
# Create unique designs
claw ask "Design a bold, distinctive landing page for a crypto startup"

# Avoid generic looks
claw ask "Give this website a unique aesthetic that stands out"

# Production-ready UI
claw ask "Build a polished, production-ready dashboard interface"
```

**Common Use Cases:**
- Landing page design
- Unique brand aesthetics
- Production-grade interfaces
- Distinctive visual design

---

### ui-ux-pro-max (The Logic) 🟢 A

**Security Grade:** Minimal Risk - Design system. Regular accessibility audits, WCAG compliance.

**What it does:** Provides professional design intelligence across nine major tech stacks, using automated reasoning to generate accessible design systems in seconds.

**Installation:**
```bash
claw skill install ui-ux-pro-max
```

**Usage Examples:**
```bash
# Multi-stack design
claw ask "Create a design system that works across React, Vue, and Angular"

# Accessible design
claw ask "Build an accessible component library with WCAG AAA compliance"

# Design reasoning
claw ask "Explain the UX decisions for this checkout flow"
```

**Common Use Cases:**
- Design system creation
- Accessibility implementation
- Multi-framework support
- UX reasoning and optimization

---

### canvas-design (The Illustrator) 🟢 A

**Security Grade:** Minimal Risk - Design generation. Review assets for brand compliance.

**What it does:** Generates sophisticated visual art and posters by expressing original design philosophies as meticulously crafted PNG or PDF assets.

**Installation:**
```bash
claw skill install canvas-design
```

**Usage Examples:**
```bash
# Create visual art
claw ask "Design a minimalist poster for our product launch"

# Generate graphics
claw ask "Create an artistic banner for our website hero section"

# Custom illustrations
claw ask "Design custom illustrations for our landing page"
```

**Common Use Cases:**
- Poster design
- Marketing graphics
- Custom illustrations
- Brand visual assets

---

### tailwind-design-system (The System Builder) 🟢 A

**Security Grade:** Minimal Risk - CSS framework. Regular design token audits.

**What it does:** Architects scalable, production-ready UI libraries using Tailwind CSS tokens and accessible component patterns.

**Installation:**
```bash
claw skill install tailwind-design-system
```

**Usage Examples:**
```bash
# Build design systems
claw ask "Create a complete Tailwind design system for our SaaS product"

# Component libraries
claw ask "Build a button component library with all variants"

# Token architecture
claw ask "Set up a Tailwind config with our brand colors and spacing scale"
```

**Common Use Cases:**
- Design system creation
- Component library development
- Tailwind configuration
- Scalable UI architecture

**Prerequisites:**
- Tailwind CSS installed in your project

---

### content-visualizer (The Brand Manager) 🟡 B

**Security Grade:** Low Risk - Image generation. Copyright compliance, brand guideline validation.

**What it does:** Analyzes your articles or posts to recommend and generate the perfect cover image, matching the mood and palette of your brand.

**Installation:**
```bash
claw skill install content-visualizer
```

**Usage Examples:**
```bash
# Generate cover images
claw ask "Create a cover image for this blog post about AI ethics"

# Match brand aesthetic
claw ask "Generate social media visuals that match our brand palette"

# Content imagery
claw ask "Design featured images for these 10 articles"
```

**Common Use Cases:**
- Blog cover images
- Social media graphics
- Content marketing visuals
- Brand-consistent imagery

---

### infographic-pro (The Data Visualizer) 🟢 A

**Security Grade:** Minimal Risk - Data visualization. Validate data accuracy, clear source attribution.

**What it does:** Turns complex data into professional infographics, recommending the best layout (like pyramids or mind-maps) for your specific information.

**Installation:**
```bash
claw skill install infographic-pro
```

**Usage Examples:**
```bash
# Create infographics
claw ask "Turn this quarterly data into a professional infographic"

# Data visualization
claw ask "Design a mind-map infographic explaining our product features"

# Statistical graphics
claw ask "Create a pyramid infographic showing our customer funnel"
```

**Common Use Cases:**
- Data visualization
- Statistical reporting
- Educational graphics
- Marketing infographics

---

### ai-image-generation (The Creative Hub) 🟠 C

**Security Grade:** Moderate Risk - AI image generation. Secure API key storage, content moderation, usage monitoring required.

**What it does:** A unified entry point that auto-detects and uses the best models (DALL-E, Imagen, Gemini) for rapid prototyping and creative asset production.

**Installation:**
```bash
claw skill install ai-image-generation
```

**Usage Examples:**
```bash
# Rapid prototyping
claw ask "Generate 10 product mockup variations"

# Creative assets
claw ask "Create hero images for our marketing campaign"

# Multi-model generation
claw ask "Generate this image using the best available AI model"
```

**Common Use Cases:**
- Rapid visual prototyping
- Marketing asset generation
- Creative exploration
- Multi-model optimization

**Note:** May require API keys for various image generation services.

---

**Who is this for?** Founders building landing pages, creators making high-fidelity social content, and developers who want their products to look as good as they function without hiring a dedicated design team.

---

## 5. Marketing & Growth

Product is only half the battle. If you can't sell it, it doesn't exist. These skills turn your OpenClaw into a growth engine that handles everything from technical SEO to the psychological triggers that actually drive conversions.

### Larry (The TikTok Viralist) 🟠 C

**Security Grade:** Moderate Risk - TikTok automation. Secure API keys, content approval workflows, may violate platform terms of service.

**What it does:** This is the secret weapon for 2026. It completely automates your TikTok photo-mode content by pairing OpenAI Image 3.5 with viral marketing hooks. It handles the generation, the aesthetic, and the strategy so you can dominate the FYP while you sleep.

**Installation:**
```bash
claw skill install Larry
```

**Usage Examples:**
```bash
# TikTok automation
claw ask "Generate 30 days of TikTok photo-mode content for my SaaS product"

# Viral content creation
claw ask "Create a viral TikTok series about productivity hacks"

# Content scheduling
claw ask "Build a TikTok content calendar with viral hooks and visuals"
```

**Common Use Cases:**
- TikTok content automation
- Viral marketing campaigns
- Photo-mode content generation
- Social media growth

**Prerequisites:**
- TikTok account
- OpenAI API access

---

### audit-website (The Consultant) 🟡 B

**Security Grade:** Low Risk - Website auditing. Use only on owned properties, secure audit reports.

**What it does:** Performs a full "health check" on your site, identifying technical friction points and telling you exactly what to fix to improve the user experience.

**Installation:**
```bash
claw skill install audit-website
```

**Usage Examples:**
```bash
# Full site audit
claw ask "Audit my website at example.com and identify all issues"

# UX analysis
claw ask "Review this landing page for user experience problems"

# Technical review
claw ask "Check my site for performance and accessibility issues"
```

**Common Use Cases:**
- Website health checks
- UX optimization
- Performance audits
- Accessibility reviews

---

### seo-audit (The Ranker) 🟡 B

**Security Grade:** Low Risk - SEO analysis. Protect audit reports, confidential handling.

**What it does:** Stop guessing why you aren't on page one. This scans your content for SEO gaps, helping you outrank competitors without spending hours in manual research.

**Installation:**
```bash
claw skill install seo-audit
```

**Usage Examples:**
```bash
# SEO analysis
claw ask "Audit this page for SEO and suggest improvements"

# Competitive analysis
claw ask "Compare my SEO to my top 3 competitors"

# Content optimization
claw ask "What SEO improvements would help this article rank higher?"
```

**Common Use Cases:**
- SEO audits
- Competitive analysis
- Content optimization
- Ranking improvements

---

### marketing-psychology (The Strategist) 🟢 A

**Security Grade:** Minimal Risk - Marketing strategy. Follow ethical marketing guidelines, transparent practices.

**What it does:** Applies proven psychological principles (like social proof and scarcity) to your product hooks. It's science, not guesswork.

**Installation:**
```bash
claw skill install marketing-psychology
```

**Usage Examples:**
```bash
# Psychological hooks
claw ask "Add psychological triggers to this landing page copy"

# Conversion optimization
claw ask "Apply scarcity and social proof to this product launch"

# Persuasion design
claw ask "Design a checkout flow using psychology principles"
```

**Common Use Cases:**
- Conversion optimization
- Psychological copywriting
- Persuasion architecture
- Marketing strategy

---

### programmatic-seo (The Multiplier) 🟠 C

**Security Grade:** Moderate Risk - Large-scale content generation. High-quality standards required, risk of search engine penalties.

**What it does:** The ultimate leverage tool for 2026. It helps you build systems that generate thousands of high-quality, SEO-optimized pages at scale.

**Installation:**
```bash
claw skill install programmatic-seo
```

**Usage Examples:**
```bash
# Scale content
claw ask "Build a system to generate 10,000 city-specific landing pages"

# Template design
claw ask "Create SEO-optimized templates for programmatic content"

# Automation setup
claw ask "Set up programmatic SEO for our directory site"
```

**Common Use Cases:**
- Large-scale content generation
- Directory websites
- Location-based pages
- Product catalog optimization

---

### product-marketing-context (The Positioning Expert) 🟢 A

**Security Grade:** Minimal Risk - Strategy tool. Protect competitive intelligence and strategic documents.

**What it does:** Helps you articulate your product's "Why." It maps out your unique selling points and identifies the exact pain points your customers are feeling.

**Installation:**
```bash
claw skill install product-marketing-context
```

**Usage Examples:**
```bash
# Positioning strategy
claw ask "Define the positioning strategy for our AI writing tool"

# USP identification
claw ask "Identify unique selling points that differentiate us from competitors"

# Customer pain points
claw ask "Map out the key pain points our product solves"
```

**Common Use Cases:**
- Product positioning
- Competitive differentiation
- Value proposition design
- Market analysis

---

### pricing-strategy (The Monetizer) 🟢 A

**Security Grade:** Minimal Risk - Pricing analysis. Legal compliance for pricing, fair practices.

**What it does:** Analyzes your market and product value to help you design a pricing model that maximizes revenue without scaring off users.

**Installation:**
```bash
claw skill install pricing-strategy
```

**Usage Examples:**
```bash
# Pricing model design
claw ask "Design a pricing strategy for our B2B SaaS platform"

# Price optimization
claw ask "Should we use tiered pricing or usage-based pricing?"

# Revenue modeling
claw ask "Model different pricing scenarios and their revenue impact"
```

**Common Use Cases:**
- Pricing model design
- Revenue optimization
- Competitive pricing analysis
- Value-based pricing

---

### page-cro (The Optimizer) 🟡 B

**Security Grade:** Low Risk - Conversion optimization. Privacy-compliant tracking, GDPR/CCPA compliance.

**What it does:** Focuses strictly on Conversion Rate Optimization. It looks at your landing pages and suggests tweaks to turn more visitors into paying customers.

**Installation:**
```bash
claw skill install page-cro
```

**Usage Examples:**
```bash
# Landing page optimization
claw ask "Optimize this landing page to increase conversions"

# A/B test ideas
claw ask "Suggest 10 A/B tests to improve our signup rate"

# Conversion analysis
claw ask "Analyze why our checkout has a 70% drop-off rate"
```

**Common Use Cases:**
- Landing page optimization
- Conversion rate improvement
- A/B testing strategy
- Funnel optimization

---

**Who is this for?** Indie hackers, solo founders, and marketers who need to grow their user base and revenue without a massive ad budget.

---

## 6. Office Productivity

The "grind" of documentation and administrative work is where most founders lose their momentum. These skills handle the heavy lifting of professional output, turning your AI into an elite executive assistant that can ship any file format in seconds.

### pdf-pro (The Document Specialist) 🟡 B

**Security Grade:** Low Risk - PDF processing. PDF sanitization, metadata removal, virus scanning.

**What it does:** Need to merge, split, or extract content from complex PDFs? This handles the "paperwork" of digital labor without the manual headache.

**Installation:**
```bash
claw skill install pdf-pro
```

**Usage Examples:**
```bash
# PDF manipulation
claw ask "Merge these 10 PDF files into one document"

# Content extraction
claw ask "Extract all tables from this PDF report"

# Document processing
claw ask "Split this 100-page PDF into separate chapters"
```

**Common Use Cases:**
- PDF merging and splitting
- Content extraction
- Document processing
- Report generation

---

### pptx (The Presenter) 🟢 A

**Security Grade:** Minimal Risk - Presentation generation. Disable macros, metadata sanitization.

**What it does:** Generates full, professional slide decks for your next meeting or pitch. No more spending hours moving text boxes around.

**Installation:**
```bash
claw skill install pptx
```

**Usage Examples:**
```bash
# Create presentations
claw ask "Create a 20-slide pitch deck for our Series A fundraising"

# Meeting slides
claw ask "Generate a quarterly business review presentation"

# Training materials
claw ask "Build a slide deck explaining our product to new customers"
```

**Common Use Cases:**
- Pitch decks
- Business presentations
- Training materials
- Meeting slides

---

### docx (The Scribe) 🟢 A

**Security Grade:** Minimal Risk - Document generation. Disable macros, clear track changes before sharing.

**What it does:** Creates structured, formatted Word documents—not just raw text—ready for official use or team collaboration.

**Installation:**
```bash
claw skill install docx
```

**Usage Examples:**
```bash
# Professional documents
claw ask "Create a formal project proposal in Word format"

# Report generation
claw ask "Generate a quarterly report with proper formatting"

# Documentation
claw ask "Write technical documentation in a Word document"
```

**Common Use Cases:**
- Professional documents
- Reports and proposals
- Documentation
- Formal communications

---

### xlsx (The Data Analyst) 🟡 B

**Security Grade:** Low Risk - Spreadsheet generation. Formula validation, disable macros, sanitize before sharing.

**What it does:** Your spreadsheet wizard. It generates Excel files complete with complex formulas and charts, making data reporting effortless.

**Installation:**
```bash
claw skill install xlsx
```

**Usage Examples:**
```bash
# Data analysis
claw ask "Create a financial model in Excel with projections"

# Reporting
claw ask "Generate a sales report with charts and pivot tables"

# Data processing
claw ask "Build a spreadsheet to track our KPIs with automated calculations"
```

**Common Use Cases:**
- Financial modeling
- Data analysis
- Report generation
- KPI tracking

---

### url-to-markdown (The Researcher) 🟡 B

**Security Grade:** Low Risk - Content extraction. URL validation, content sanitization, respect robots.txt.

**What it does:** A must-have for building a knowledge base. It cleans and converts any webpage into clean Markdown format for easy reading or AI processing.

**Installation:**
```bash
claw skill install url-to-markdown
```

**Usage Examples:**
```bash
# Web content extraction
claw ask "Convert this article to Markdown for my notes"

# Research compilation
claw ask "Extract and convert these 20 articles to Markdown"

# Knowledge base building
claw ask "Convert our competitor's documentation to Markdown for analysis"
```

**Common Use Cases:**
- Research compilation
- Knowledge base building
- Content archiving
- Documentation extraction

---

### markdown-to-html (The Publisher) 🟡 B

**Security Grade:** Low Risk - HTML generation. Sanitize HTML output, use secure parsers, implement CSP.

**What it does:** The final step in the publishing chain. It turns your clean notes and drafts into web-ready HTML for newsletters or blogs.

**Installation:**
```bash
claw skill install markdown-to-html
```

**Usage Examples:**
```bash
# Publishing workflow
claw ask "Convert this Markdown article to HTML for our blog"

# Newsletter creation
claw ask "Turn these notes into an HTML email newsletter"

# Web content
claw ask "Convert our documentation to HTML for the website"
```

**Common Use Cases:**
- Blog publishing
- Email newsletters
- Web content creation
- Documentation publishing

---

### format-pro (The Stylist) 🟢 A

**Security Grade:** Minimal Risk - Formatting tool. Preserve document integrity.

**What it does:** Standardizes your document layouts and styles, ensuring everything your brand puts out looks professional and uniform.

**Installation:**
```bash
claw skill install format-pro
```

**Usage Examples:**
```bash
# Style standardization
claw ask "Apply our brand style guide to these documents"

# Formatting cleanup
claw ask "Clean up and standardize the formatting in this report"

# Brand consistency
claw ask "Ensure all our documents follow consistent formatting rules"
```

**Common Use Cases:**
- Brand consistency
- Document formatting
- Style standardization
- Professional polish

---

**Who is this for?** Founders, executives, and professionals who need to create polished documents without the administrative overhead.

---

## 📦 Installation Script

The `install-all-skills.sh` script provides a convenient way to install all skills or specific categories.

### Full Installation
```bash
chmod +x install-all-skills.sh
./install-all-skills.sh
```

This will install all 50 skills sequentially with progress indicators.

### Category Installation
```bash
# Install only Foundation skills (6 skills)
./install-all-skills.sh --category foundation

# Install only Logic & Creative skills (10 skills)
./install-all-skills.sh --category logic

# Install only Programming skills (11 skills)
./install-all-skills.sh --category programming

# Install only Design skills (8 skills)
./install-all-skills.sh --category design

# Install only Marketing skills (8 skills)
./install-all-skills.sh --category marketing

# Install only Productivity skills (7 skills)
./install-all-skills.sh --category productivity
```

### Script Features
- ✅ Progress indicators for each installation
- ✅ Error handling and logging
- ✅ Dry-run mode (`--dry-run` flag)
- ✅ Skip installed skills (`--skip-existing` flag)
- ✅ Detailed installation log (`installation.log`)
- ✅ Summary report at completion

### Script Options
```bash
./install-all-skills.sh [OPTIONS]

OPTIONS:
  --category <name>     Install only skills from specified category
  --dry-run            Show what would be installed without installing
  --skip-existing      Skip skills that are already installed
  --help               Show this help message
```

---

## 🔧 Prerequisites

Before installing these skills, ensure you have:

1. **OpenClaw CLI installed** - The core OpenClaw system
2. **Active internet connection** - For downloading skills
3. **Sufficient disk space** - Approximately 500MB for all skills
4. **API Keys** (for some skills):
   - OpenAI API key (for Larry, ai-image-generation)
   - Image generation service keys (DALL-E, Imagen, etc.)

### Setting up API Keys
```bash
# Set OpenAI API key
export OPENAI_API_KEY="your-key-here"

# Or add to your shell profile
echo 'export OPENAI_API_KEY="your-key-here"' >> ~/.bashrc
```

---

## 📊 Skill Summary

| Category | Skills | Total | Security Profile |
|----------|--------|-------|------------------|
| Foundation (Agent Core) | find-skills, skill-creator, mcp-builder, using-superpowers, subagent-driven-development, agent-tools | 6 | 🟢×1 🟡×2 🟠×2 🔴×1 |
| Logic & Creative Stack | brainstorming, copywriting, systematic-debugging, writing-plans, content-strategy, executing-plans, marketing-ideas, copy-editing, social-content, reflection | 10 | 🟢×8 🟡×2 |
| Programming & Product | vercel-react-best-practices, vercel-composition-patterns, remotion-best-practices, agent-browser, browser-use, vercel-react-native-skills, supabase-postgres-best-practices, next-best-practices, webapp-testing, test-driven-development, requesting-code-review | 11 | 🟢×2 🟡×6 🟠×1 🔴×2 |
| Design & Visuals | web-design-guidelines, frontend-design, ui-ux-pro-max, canvas-design, tailwind-design-system, content-visualizer, infographic-pro, ai-image-generation | 8 | 🟢×6 🟡×1 🟠×1 |
| Marketing & Growth | Larry, audit-website, seo-audit, marketing-psychology, programmatic-seo, product-marketing-context, pricing-strategy, page-cro | 8 | 🟢×3 🟡×3 🟠×2 |
| Office Productivity | pdf-pro, pptx, docx, xlsx, url-to-markdown, markdown-to-html, format-pro | 7 | 🟢×3 🟡×4 |
| **TOTAL** | | **50** | **🟢×24 🟡×17 🟠×6 🔴×3** |

### Security Risk Distribution
- **🟢 Minimal Risk (A)**: 24 skills (48%) - Safe for all environments
- **🟡 Low Risk (B)**: 17 skills (34%) - Safe with standard precautions
- **🟠 Moderate Risk (C)**: 6 skills (12%) - Requires careful configuration
- **🔴 High Risk (D)**: 3 skills (6%) - Enterprise security review recommended

**High-Risk Skills:** mcp-builder, agent-browser, browser-use  
**Moderate-Risk Skills:** skill-creator, subagent-driven-development, supabase-postgres-best-practices, ai-image-generation, Larry, programmatic-seo

📋 **[View Full Security Assessment](SECURITY_ASSESSMENT.md)** for detailed threat analysis and mitigation strategies.

---

## 🎯 Recommended Installation Paths

### For Solo Founders
1. Start with **Foundation** (6 skills) - Essential plumbing
2. Add **Marketing & Growth** (8 skills) - Get users
3. Add **Logic & Creative Stack** (10 skills) - Create content
4. Total: 24 essential skills

### For Developers
1. Start with **Foundation** (6 skills) - Essential plumbing
2. Add **Programming & Product** (11 skills) - Build products
3. Add **Design & Visuals** (8 skills) - Polish UI
4. Total: 25 essential skills

### For Content Creators
1. Start with **Foundation** (6 skills) - Essential plumbing
2. Add **Logic & Creative Stack** (10 skills) - Create content
3. Add **Design & Visuals** (8 skills) - Visual content
4. Add **Office Productivity** (7 skills) - Documentation
5. Total: 31 essential skills

### For Growth Hackers
1. Start with **Foundation** (6 skills) - Essential plumbing
2. Add **Marketing & Growth** (8 skills) - Growth tactics
3. Add **Logic & Creative Stack** (10 skills) - Content creation
4. Total: 24 essential skills

---

## 🤝 Contributing

Found a skill that should be added to this list? Have improvements to the documentation? Please submit a pull request!

---

## 📝 License

This documentation is provided as-is for the OpenClaw community.

---

## 🔒 Security & Best Practices

### Security Assessment
All 50 OpenClaw skills have been comprehensively evaluated for security threats, vulnerabilities, and risks. View the complete security assessment:

📋 **[SECURITY_ASSESSMENT.md](SECURITY_ASSESSMENT.md)** - Detailed threat analysis, risk grades, mitigations, and best practices for each skill.

### Security Highlights

#### High-Risk Skills (Require Enterprise Review) 🔴
1. **mcp-builder** - Database and API access, credential management
2. **agent-browser** - Web automation, potential CFAA violations
3. **browser-use** - Browser automation, session management risks

#### Moderate-Risk Skills (Require Configuration) 🟠
1. **skill-creator** - Code generation without validation
2. **subagent-driven-development** - Sub-agent privilege escalation
3. **supabase-postgres-best-practices** - Database security
4. **ai-image-generation** - API key exposure, content moderation
5. **Larry** - Platform automation, terms of service compliance
6. **programmatic-seo** - Search engine penalty risks

### Essential Security Practices

#### 1. Credential Management
- **Never** hardcode API keys or credentials
- Use environment variables or secret management tools (AWS Secrets Manager, HashiCorp Vault)
- Rotate credentials regularly
- Implement least-privilege access

#### 2. Code Review Process
- **Always** review AI-generated code before deployment
- Use static analysis and security linting tools
- Implement mandatory peer review for production code
- Test in isolated environments first

#### 3. Monitoring & Logging
- Enable comprehensive logging for all skill usage
- Implement alerting for suspicious activities
- Regular security audits and penetration testing
- Maintain incident response procedures

#### 4. Compliance Requirements
- **GDPR** - Skills processing personal data
- **CCPA** - California residents' data
- **HIPAA** - Healthcare-related applications
- **SOC 2** - Enterprise deployments
- **Platform ToS** - Automation must respect terms of service

#### 5. Network Security
- Restrict external network access where possible
- Use VPNs and private networks for sensitive connections
- Implement rate limiting and throttling
- Enable TLS/SSL for all network communications

#### 6. High-Risk Skill Guidelines
- Conduct security review before production deployment
- Implement additional monitoring and alerting
- Consider penetration testing
- Document security controls and procedures
- Establish incident response plans

### Security Resources
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [OWASP AI Security](https://owasp.org/www-project-ai-security-and-privacy-guide/)
- [Model Context Protocol Security](https://modelcontextprotocol.io/security)
- [STRIDE Threat Modeling](https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool-threats)

### Reporting Security Issues
If you discover a security vulnerability in any OpenClaw skill:
1. **Do not** open a public issue
2. Email security concerns to: security@openclaw.dev
3. Include detailed information about the vulnerability
4. Allow 90 days for remediation before public disclosure

---

## 🔗 Resources

- [OpenClaw Official Documentation](https://openclaw.dev/docs)
- [OpenClaw Community Forum](https://community.openclaw.dev)
- [Skill Marketplace](https://skills.openclaw.dev)
- [Model Context Protocol](https://modelcontextprotocol.io)
- [Security Assessment](SECURITY_ASSESSMENT.md) 🔒

---

**Last Updated:** 2026-02-23  
**Total Skills Documented:** 50  
**Security Assessment:** Complete - All 50 skills graded  
**Installation Script Version:** 1.0.0
