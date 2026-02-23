#!/bin/bash

################################################################################
# OpenClaw Skills - Comprehensive Installation Script
# Version: 1.0.0
# Description: Installs all 50 trusted OpenClaw skills or specific categories
################################################################################

set -e  # Exit on error

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Configuration
LOG_FILE="installation.log"
DRY_RUN=false
SKIP_EXISTING=false
SELECTED_CATEGORY=""

# Skill arrays by category
declare -a FOUNDATION_SKILLS=(
    "find-skills"
    "skill-creator"
    "mcp-builder"
    "using-superpowers"
    "subagent-driven-development"
    "agent-tools"
)

declare -a LOGIC_SKILLS=(
    "brainstorming"
    "copywriting"
    "systematic-debugging"
    "writing-plans"
    "content-strategy"
    "executing-plans"
    "marketing-ideas"
    "copy-editing"
    "social-content"
    "reflection"
)

declare -a PROGRAMMING_SKILLS=(
    "vercel-react-best-practices"
    "vercel-composition-patterns"
    "remotion-best-practices"
    "agent-browser"
    "browser-use"
    "vercel-react-native-skills"
    "supabase-postgres-best-practices"
    "next-best-practices"
    "webapp-testing"
    "test-driven-development"
    "requesting-code-review"
)

declare -a DESIGN_SKILLS=(
    "web-design-guidelines"
    "frontend-design"
    "ui-ux-pro-max"
    "canvas-design"
    "tailwind-design-system"
    "content-visualizer"
    "infographic-pro"
    "ai-image-generation"
)

declare -a MARKETING_SKILLS=(
    "Larry"
    "audit-website"
    "seo-audit"
    "marketing-psychology"
    "programmatic-seo"
    "product-marketing-context"
    "pricing-strategy"
    "page-cro"
)

declare -a PRODUCTIVITY_SKILLS=(
    "pdf-pro"
    "pptx"
    "docx"
    "xlsx"
    "url-to-markdown"
    "markdown-to-html"
    "format-pro"
)

################################################################################
# Helper Functions
################################################################################

print_header() {
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC}  ${MAGENTA}OpenClaw Skills - Comprehensive Installation Script${NC}       ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}  ${BLUE}Version: 1.0.0${NC}                                              ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

print_usage() {
    echo -e "${YELLOW}Usage:${NC} $0 [OPTIONS]"
    echo ""
    echo -e "${YELLOW}OPTIONS:${NC}"
    echo "  --category <name>     Install only skills from specified category"
    echo "                        (foundation, logic, programming, design, marketing, productivity)"
    echo "  --dry-run            Show what would be installed without installing"
    echo "  --skip-existing      Skip skills that are already installed"
    echo "  --help               Show this help message"
    echo ""
    echo -e "${YELLOW}EXAMPLES:${NC}"
    echo "  $0                                    # Install all skills"
    echo "  $0 --category foundation              # Install Foundation skills only"
    echo "  $0 --dry-run                          # Preview installation"
    echo "  $0 --skip-existing                    # Skip already installed skills"
    echo ""
}

log_message() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$LOG_FILE"
}

check_prerequisites() {
    echo -e "${BLUE}Checking prerequisites...${NC}"
    
    # Check if claw CLI is installed
    if ! command -v claw &> /dev/null; then
        echo -e "${RED}Error: OpenClaw CLI not found!${NC}"
        echo -e "${YELLOW}Please install OpenClaw first: https://openclaw.dev/install${NC}"
        log_message "ERROR: OpenClaw CLI not found"
        exit 1
    fi
    
    echo -e "${GREEN}✓ OpenClaw CLI found${NC}"
    log_message "Prerequisites check passed"
}

is_skill_installed() {
    local skill="$1"
    # Check if skill is already installed
    if claw skill list | grep -q "^$skill\$" 2>/dev/null; then
        return 0
    fi
    return 1
}

install_skill() {
    local skill="$1"
    local category="$2"
    local current="$3"
    local total="$4"
    
    echo -e "${CYAN}[$current/$total]${NC} Installing ${YELLOW}$skill${NC} (${category})..."
    
    if [ "$DRY_RUN" = true ]; then
        echo -e "${BLUE}[DRY RUN]${NC} Would install: $skill"
        log_message "DRY RUN: Would install $skill"
        return 0
    fi
    
    if [ "$SKIP_EXISTING" = true ] && is_skill_installed "$skill"; then
        echo -e "${GREEN}✓ $skill already installed, skipping${NC}"
        log_message "Skipped $skill (already installed)"
        return 0
    fi
    
    # Install the skill
    if claw skill install "$skill" >> "$LOG_FILE" 2>&1; then
        echo -e "${GREEN}✓ Successfully installed $skill${NC}"
        log_message "Successfully installed $skill"
        return 0
    else
        echo -e "${RED}✗ Failed to install $skill${NC}"
        log_message "ERROR: Failed to install $skill"
        return 1
    fi
}

install_category() {
    local category="$1"
    local skills_array_name="$2"
    local category_display="$3"
    
    # Get the array by reference
    local -n skills=$skills_array_name
    local total=${#skills[@]}
    local installed=0
    local failed=0
    
    echo ""
    echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${MAGENTA}║${NC}  Installing: ${YELLOW}$category_display${NC}"
    echo -e "${MAGENTA}║${NC}  Skills: ${CYAN}$total${NC}"
    echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    local current=1
    for skill in "${skills[@]}"; do
        if install_skill "$skill" "$category_display" "$current" "$total"; then
            ((installed++))
        else
            ((failed++))
        fi
        ((current++))
        echo ""
    done
    
    echo -e "${GREEN}Category Summary:${NC} $installed/$total installed"
    if [ $failed -gt 0 ]; then
        echo -e "${RED}Failed: $failed${NC}"
    fi
    echo ""
}

print_summary() {
    local total_skills="$1"
    local total_installed="$2"
    local total_failed="$3"
    
    echo ""
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC}  ${MAGENTA}Installation Complete!${NC}                                      ${CYAN}║${NC}"
    echo -e "${CYAN}╠════════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}║${NC}  Total Skills: ${YELLOW}$total_skills${NC}"
    echo -e "${CYAN}║${NC}  Successfully Installed: ${GREEN}$total_installed${NC}"
    if [ $total_failed -gt 0 ]; then
        echo -e "${CYAN}║${NC}  Failed: ${RED}$total_failed${NC}"
    fi
    echo -e "${CYAN}╠════════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}║${NC}  Log file: ${BLUE}$LOG_FILE${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    if [ $total_failed -gt 0 ]; then
        echo -e "${YELLOW}Some installations failed. Check $LOG_FILE for details.${NC}"
        echo ""
    else
        echo -e "${GREEN}All skills installed successfully! 🎉${NC}"
        echo ""
        echo -e "${YELLOW}Next steps:${NC}"
        echo "  1. Verify installation: claw skill list"
        echo "  2. Explore a skill: claw ask \"How do I use the find-skills skill?\""
        echo "  3. Check documentation: See README.md for usage examples"
        echo ""
    fi
}

################################################################################
# Main Installation Logic
################################################################################

main() {
    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --category)
                SELECTED_CATEGORY="$2"
                shift 2
                ;;
            --dry-run)
                DRY_RUN=true
                shift
                ;;
            --skip-existing)
                SKIP_EXISTING=true
                shift
                ;;
            --help)
                print_usage
                exit 0
                ;;
            *)
                echo -e "${RED}Unknown option: $1${NC}"
                print_usage
                exit 1
                ;;
        esac
    done
    
    # Print header
    print_header
    
    # Initialize log file
    echo "OpenClaw Skills Installation Log" > "$LOG_FILE"
    echo "Started at: $(date)" >> "$LOG_FILE"
    echo "----------------------------------------" >> "$LOG_FILE"
    
    # Check prerequisites
    check_prerequisites
    
    if [ "$DRY_RUN" = true ]; then
        echo -e "${BLUE}Running in DRY RUN mode - no skills will be installed${NC}"
        echo ""
    fi
    
    # Initialize counters
    local total_skills=0
    local total_installed=0
    local total_failed=0
    
    # Install based on category selection
    if [ -z "$SELECTED_CATEGORY" ]; then
        # Install all skills
        echo -e "${YELLOW}Installing all 50 OpenClaw skills...${NC}"
        echo ""
        
        install_category "foundation" "FOUNDATION_SKILLS" "The Foundation (Agent Core)"
        install_category "logic" "LOGIC_SKILLS" "The Logic & Creative Stack"
        install_category "programming" "PROGRAMMING_SKILLS" "Programming & Product Building"
        install_category "design" "DESIGN_SKILLS" "Design & Visuals"
        install_category "marketing" "MARKETING_SKILLS" "Marketing & Growth"
        install_category "productivity" "PRODUCTIVITY_SKILLS" "Office Productivity"
        
        total_skills=50
    else
        # Install specific category
        case $SELECTED_CATEGORY in
            foundation)
                install_category "foundation" "FOUNDATION_SKILLS" "The Foundation (Agent Core)"
                total_skills=${#FOUNDATION_SKILLS[@]}
                ;;
            logic)
                install_category "logic" "LOGIC_SKILLS" "The Logic & Creative Stack"
                total_skills=${#LOGIC_SKILLS[@]}
                ;;
            programming)
                install_category "programming" "PROGRAMMING_SKILLS" "Programming & Product Building"
                total_skills=${#PROGRAMMING_SKILLS[@]}
                ;;
            design)
                install_category "design" "DESIGN_SKILLS" "Design & Visuals"
                total_skills=${#DESIGN_SKILLS[@]}
                ;;
            marketing)
                install_category "marketing" "MARKETING_SKILLS" "Marketing & Growth"
                total_skills=${#MARKETING_SKILLS[@]}
                ;;
            productivity)
                install_category "productivity" "PRODUCTIVITY_SKILLS" "Office Productivity"
                total_skills=${#PRODUCTIVITY_SKILLS[@]}
                ;;
            *)
                echo -e "${RED}Error: Unknown category '$SELECTED_CATEGORY'${NC}"
                echo ""
                echo -e "${YELLOW}Available categories:${NC}"
                echo "  - foundation"
                echo "  - logic"
                echo "  - programming"
                echo "  - design"
                echo "  - marketing"
                echo "  - productivity"
                exit 1
                ;;
        esac
    fi
    
    # Count results from log
    total_installed=$(grep -c "Successfully installed" "$LOG_FILE" 2>/dev/null || echo "0")
    total_failed=$(grep -c "ERROR: Failed to install" "$LOG_FILE" 2>/dev/null || echo "0")
    
    # Print summary
    print_summary "$total_skills" "$total_installed" "$total_failed"
    
    log_message "Installation completed"
    log_message "Total: $total_skills, Installed: $total_installed, Failed: $total_failed"
    
    # Exit with appropriate code
    if [ $total_failed -gt 0 ]; then
        exit 1
    fi
    exit 0
}

################################################################################
# Script Entry Point
################################################################################

# Run main function
main "$@"
