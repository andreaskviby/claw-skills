# Security Assessment of OpenClaw Skills

**Assessment Date:** 2026-02-23  
**Total Skills Assessed:** 50  
**Assessment Framework:** STRIDE + OWASP Top 10

## Security Grading System

Each skill has been evaluated across multiple security dimensions:

### Risk Categories
- **Data Privacy Risk** - Potential for unauthorized data access or leakage
- **Code Execution Risk** - Ability to execute arbitrary code
- **Network/API Risk** - External network calls and API dependencies
- **Input Validation Risk** - Vulnerability to injection attacks
- **Authentication Risk** - API key and credential management requirements
- **Dependency Risk** - Third-party library and service dependencies

### Security Grades

- **🟢 A (Minimal Risk)** - Safe for all environments, no significant security concerns
- **🟡 B (Low Risk)** - Minor risks, safe with standard precautions
- **🟠 C (Moderate Risk)** - Requires careful configuration and monitoring
- **🔴 D (High Risk)** - Significant security considerations, enterprise review recommended
- **⛔ E (Critical Risk)** - Extreme caution required, dedicated security review mandatory

---

## Security Assessment by Category

### 1. Foundation Skills (Agent Core)

#### find-skills 🟡 B (Low Risk)
**Threats:**
- Network dependency for skill discovery
- Potential for malicious skill recommendations
- Data exposure through search queries

**Mitigations:**
- Use trusted skill repositories only
- Verify skill sources before installation
- Review skill permissions before enabling

**Best Practices:**
- Maintain allowlist of approved skill sources
- Regular audit of installed skills

---

#### skill-creator 🟠 C (Moderate Risk)
**Threats:**
- Code generation without security validation
- Potential for creating vulnerable skills
- Arbitrary code execution in generated skills
- No built-in security scanning

**Mitigations:**
- Always review generated skill code
- Run security scans on created skills
- Implement code review process
- Use security linting tools

**Best Practices:**
- Never auto-deploy generated skills
- Implement mandatory security review workflow
- Use static analysis tools on all generated code
- Test in isolated environments first

---

#### mcp-builder 🔴 D (High Risk)
**Threats:**
- Direct access to private databases and APIs
- Credential exposure in generated code
- Insecure connection configurations
- SQL injection vulnerabilities
- Unauthorized data access
- Man-in-the-middle attacks

**Mitigations:**
- Use environment variables for credentials
- Implement least-privilege access
- Enable TLS/SSL for all connections
- Input validation and parameterized queries
- Regular security audits of MCP servers
- Network segmentation

**Best Practices:**
- Store credentials in secure vaults (e.g., AWS Secrets Manager, HashiCorp Vault)
- Implement connection whitelisting
- Use read-only connections where possible
- Enable audit logging for all data access
- Regular credential rotation
- Deploy in private networks with VPN access
- Implement rate limiting and monitoring

**Enterprise Requirements:**
- Mandatory security review before deployment
- Penetration testing for production MCP servers
- SIEM integration for monitoring

---

#### using-superpowers 🟡 B (Low Risk)
**Threats:**
- Capability enumeration by attackers
- Privilege escalation if misconfigured

**Mitigations:**
- Implement capability-based security
- Regular capability audits
- Principle of least privilege

**Best Practices:**
- Document all enabled capabilities
- Review and minimize permissions regularly

---

#### subagent-driven-development 🟠 C (Moderate Risk)
**Threats:**
- Sub-agent privilege escalation
- Unaudited code from sub-agents
- Resource exhaustion attacks
- Loss of control over delegated tasks

**Mitigations:**
- Implement sub-agent sandboxing
- Code review all sub-agent outputs
- Resource limits and monitoring
- Clear delegation boundaries

**Best Practices:**
- Trust but verify all sub-agent work
- Implement approval workflows
- Monitor resource consumption
- Audit trails for all delegated tasks

---

#### agent-tools 🟢 A (Minimal Risk)
**Threats:**
- File system access risks
- Path traversal vulnerabilities

**Mitigations:**
- Restrict file system access scope
- Input validation for file paths
- Use absolute paths with validation

**Best Practices:**
- Define allowed directories
- Regular permission audits

---

### 2. Logic & Creative Stack

#### brainstorming 🟢 A (Minimal Risk)
**Threats:** Minimal - primarily ideation tool
**Mitigations:** Standard content filtering
**Best Practices:** Review AI-generated ideas before implementation

---

#### copywriting 🟢 A (Minimal Risk)
**Threats:**
- Potential for brand impersonation
- Phishing content generation

**Mitigations:**
- Content review before publication
- Brand voice guidelines

**Best Practices:**
- Human oversight for all public content
- Compliance review for regulated industries

---

#### systematic-debugging 🟢 A (Minimal Risk)
**Threats:**
- Information disclosure in debug logs
- Exposure of sensitive data

**Mitigations:**
- Sanitize debug outputs
- Avoid logging sensitive data

**Best Practices:**
- Use secure logging practices
- Implement log access controls

---

#### writing-plans 🟢 A (Minimal Risk)
**Threats:** Minimal - planning tool
**Mitigations:** Standard security practices
**Best Practices:** Protect strategic plans appropriately

---

#### content-strategy 🟢 A (Minimal Risk)
**Threats:** Minimal - strategy tool
**Mitigations:** Standard content security
**Best Practices:** Competitive intelligence protection

---

#### executing-plans 🟡 B (Low Risk)
**Threats:**
- Automated execution without oversight
- Unintended consequences from automation

**Mitigations:**
- Approval workflows for critical tasks
- Rollback capabilities
- Monitoring and alerting

**Best Practices:**
- Staged rollouts
- Human checkpoints for critical operations

---

#### marketing-ideas 🟢 A (Minimal Risk)
**Threats:** Minimal - ideation tool
**Mitigations:** Standard practices
**Best Practices:** Legal review for claims and campaigns

---

#### copy-editing 🟢 A (Minimal Risk)
**Threats:** Minimal - editing tool
**Mitigations:** Standard practices
**Best Practices:** Preserve original intent and accuracy

---

#### social-content 🟡 B (Low Risk)
**Threats:**
- Brand reputation risk from automation
- Potential for inappropriate content
- Platform API abuse

**Mitigations:**
- Content approval workflows
- Platform compliance checks
- Rate limiting

**Best Practices:**
- Human review before posting
- Monitor engagement and sentiment
- Respect platform terms of service

---

#### reflection 🟢 A (Minimal Risk)
**Threats:** Minimal - self-review tool
**Mitigations:** Standard practices
**Best Practices:** Use as supplement, not replacement for human review

---

### 3. Programming & Product Building

#### vercel-react-best-practices 🟡 B (Low Risk)
**Threats:**
- Generation of vulnerable React code
- XSS vulnerabilities
- Insecure state management

**Mitigations:**
- Security linting (ESLint security plugins)
- Code review process
- Security testing

**Best Practices:**
- Use React security best practices
- Implement CSP headers
- Regular dependency updates
- Security scanning in CI/CD

---

#### vercel-composition-patterns 🟡 B (Low Risk)
**Threats:**
- Component security vulnerabilities
- Props injection attacks

**Mitigations:**
- Validate all component inputs
- Security-focused component design
- Regular security audits

**Best Practices:**
- Implement secure component patterns
- Use TypeScript for type safety
- Component security testing

---

#### remotion-best-practices 🟡 B (Low Risk)
**Threats:**
- Resource exhaustion from video generation
- Arbitrary code execution in video templates

**Mitigations:**
- Resource limits
- Template validation
- Sandboxed execution

**Best Practices:**
- Monitor resource usage
- Validate all inputs
- Use approved templates only

---

#### agent-browser 🔴 D (High Risk)
**Threats:**
- Web scraping violations
- CAPTCHA bypass attempts
- Terms of service violations
- Bot detection evasion
- Data theft capabilities
- Automated attacks on websites
- Privacy violations

**Mitigations:**
- Respect robots.txt and rate limits
- Implement delays and throttling
- Use only on owned/authorized sites
- Legal compliance review
- Transparent user agent strings
- IP rotation management

**Best Practices:**
- Obtain explicit permission before scraping
- Document all automated activities
- Implement ethical scraping policies
- Monitor for abuse
- Regular legal review
- Implement circuit breakers

**Warning:** Unauthorized scraping may violate laws (CFAA, GDPR) and website terms of service.

---

#### browser-use 🔴 D (High Risk)
**Threats:**
- Similar to agent-browser
- Automated form submission vulnerabilities
- Session hijacking risks
- Cookie theft potential

**Mitigations:**
- Same as agent-browser plus:
- Secure session management
- Cookie encryption
- Access control for automation

**Best Practices:**
- Use only on authorized systems
- Implement audit logging
- Regular security assessments
- Incident response plan

---

#### vercel-react-native-skills 🟡 B (Low Risk)
**Threats:**
- Mobile-specific vulnerabilities
- Insecure data storage
- API key exposure in mobile apps

**Mitigations:**
- Secure storage for sensitive data
- Code obfuscation
- Certificate pinning

**Best Practices:**
- Follow OWASP Mobile Top 10
- Regular security testing
- Secure API communication

---

#### supabase-postgres-best-practices 🟠 C (Moderate Risk)
**Threats:**
- SQL injection vulnerabilities
- Row-level security bypass
- Data leakage
- Privilege escalation
- Insecure database schema

**Mitigations:**
- Parameterized queries only
- Proper RLS policy implementation
- Regular security audits
- Principle of least privilege

**Best Practices:**
- Enable RLS on all tables
- Audit all database policies
- Use Supabase security features
- Regular backup and recovery testing
- Monitoring and alerting for suspicious queries

---

#### next-best-practices 🟡 B (Low Risk)
**Threats:**
- Server-side vulnerabilities
- API route security issues
- Environment variable exposure

**Mitigations:**
- Secure API routes
- Environment variable management
- Security headers

**Best Practices:**
- Follow Next.js security guidelines
- Regular security updates
- API authentication and authorization

---

#### webapp-testing 🟡 B (Low Risk)
**Threats:**
- Test data exposure
- Test environment access in production

**Mitigations:**
- Separate test environments
- Synthetic test data only
- Environment isolation

**Best Practices:**
- Never test in production
- Secure test environments
- Sanitize test data

---

#### test-driven-development 🟢 A (Minimal Risk)
**Threats:** Minimal - testing methodology
**Mitigations:** Standard security practices
**Best Practices:** Include security tests in TDD

---

#### requesting-code-review 🟢 A (Minimal Risk)
**Threats:**
- False sense of security from automated review
- Code exposure to review service

**Mitigations:**
- Use trusted review tools
- Supplement with human review
- Protect sensitive code

**Best Practices:**
- Combine automated and manual review
- Security-focused review checklist

---

### 4. Design & Visuals

#### web-design-guidelines 🟢 A (Minimal Risk)
**Threats:** Minimal - design guidance
**Mitigations:** Standard practices
**Best Practices:** Ensure accessibility compliance

---

#### frontend-design 🟢 A (Minimal Risk)
**Threats:** Minimal - design tool
**Mitigations:** Standard practices
**Best Practices:** Review designs for accessibility and usability

---

#### ui-ux-pro-max 🟢 A (Minimal Risk)
**Threats:**
- Accessibility violations if misconfigured

**Mitigations:**
- WCAG compliance checking
- Accessibility testing

**Best Practices:**
- Regular accessibility audits
- User testing with assistive technologies

---

#### canvas-design 🟢 A (Minimal Risk)
**Threats:** Minimal - design generation
**Mitigations:** Standard practices
**Best Practices:** Review generated assets for brand compliance

---

#### tailwind-design-system 🟢 A (Minimal Risk)
**Threats:** Minimal - CSS framework configuration
**Mitigations:** Standard practices
**Best Practices:** Regular design token audits

---

#### content-visualizer 🟡 B (Low Risk)
**Threats:**
- Copyright infringement in generated images
- Brand guideline violations

**Mitigations:**
- Copyright compliance checks
- Brand guideline validation

**Best Practices:**
- Legal review for commercial use
- Clear usage rights documentation

---

#### infographic-pro 🟢 A (Minimal Risk)
**Threats:**
- Data misrepresentation
- Copyright in data sources

**Mitigations:**
- Data accuracy validation
- Source attribution

**Best Practices:**
- Fact-checking process
- Clear data sources

---

#### ai-image-generation 🟠 C (Moderate Risk)
**Threats:**
- API key exposure
- Inappropriate content generation
- Copyright and IP violations
- High API costs from abuse
- Generated content moderation issues
- Prompt injection attacks

**Mitigations:**
- Secure API key storage
- Content moderation filters
- Usage monitoring and limits
- Cost controls and budgets
- Rate limiting
- Prompt sanitization

**Best Practices:**
- Use environment variables for keys
- Implement content filtering
- Regular cost monitoring
- Clear usage policies
- Legal review for commercial use
- Implement approval workflows for public content
- Monitor for abuse patterns

**Prerequisites:**
- Secure credential management system
- Content moderation strategy
- Budget controls

---

### 5. Marketing & Growth

#### Larry 🟠 C (Moderate Risk)
**Threats:**
- OpenAI API key exposure
- TikTok automation detection
- Platform terms of service violations
- Brand reputation risk from automated content
- High API costs
- Inappropriate content generation

**Mitigations:**
- Secure API key management
- Respect platform rate limits
- Content approval workflows
- Cost monitoring
- Content filtering

**Best Practices:**
- Human review before posting
- Platform compliance monitoring
- Budget controls
- Legal review of automation practices
- Regular audit of generated content
- Implement gradual rollout

**Warning:** Automated social media posting may violate platform terms of service.

---

#### audit-website 🟡 B (Low Risk)
**Threats:**
- Reconnaissance for attackers
- Information disclosure

**Mitigations:**
- Use only on owned properties
- Secure audit reports
- Limited public disclosure

**Best Practices:**
- Restrict access to audit results
- Act on findings promptly
- Regular security assessments

---

#### seo-audit 🟡 B (Low Risk)
**Threats:**
- Competitive intelligence exposure
- Website structure disclosure

**Mitigations:**
- Protect audit reports
- Secure competitive analysis data

**Best Practices:**
- Confidential handling of insights
- Regular SEO security reviews

---

#### marketing-psychology 🟢 A (Minimal Risk)
**Threats:**
- Ethical concerns with manipulation
- Deceptive practices

**Mitigations:**
- Ethical marketing guidelines
- Legal compliance review

**Best Practices:**
- Transparent marketing practices
- Consumer protection compliance

---

#### programmatic-seo 🟠 C (Moderate Risk)
**Threats:**
- Search engine penalties for spam
- Duplicate content issues
- Thin content generation
- Google penalty risks
- Domain authority damage

**Mitigations:**
- High-quality content standards
- Unique content generation
- Google guidelines compliance
- Regular quality audits

**Best Practices:**
- Manual review of templates
- Unique value in each page
- Monitor search rankings
- Quality over quantity
- Gradual rollout and testing
- Implement canonical tags properly

**Warning:** Poorly implemented programmatic SEO can result in permanent search engine penalties.

---

#### product-marketing-context 🟢 A (Minimal Risk)
**Threats:**
- Competitive intelligence exposure

**Mitigations:**
- Protect strategic documents
- Access controls

**Best Practices:**
- Confidential handling of positioning strategy
- Regular competitive monitoring

---

#### pricing-strategy 🟢 A (Minimal Risk)
**Threats:**
- Price discrimination concerns
- Competitive intelligence

**Mitigations:**
- Legal compliance for pricing
- Protect pricing models

**Best Practices:**
- Fair pricing practices
- Transparent pricing communication

---

#### page-cro 🟡 B (Low Risk)
**Threats:**
- Privacy concerns with tracking
- A/B testing ethics

**Mitigations:**
- Privacy-compliant tracking
- User consent for experiments
- GDPR/CCPA compliance

**Best Practices:**
- Transparent data collection
- Ethical experimentation
- Privacy policy updates

---

### 6. Office Productivity

#### pdf-pro 🟡 B (Low Risk)
**Threats:**
- Malicious PDF generation
- Data leakage in PDF metadata
- File corruption vulnerabilities

**Mitigations:**
- PDF sanitization
- Metadata removal
- Virus scanning

**Best Practices:**
- Scan all processed PDFs
- Remove sensitive metadata
- Use trusted PDF libraries

---

#### pptx 🟢 A (Minimal Risk)
**Threats:**
- Embedded macro risks
- Data leakage in presentations

**Mitigations:**
- Disable macros by default
- Metadata sanitization

**Best Practices:**
- Review before sharing
- Remove sensitive information

---

#### docx 🟢 A (Minimal Risk)
**Threats:**
- Macro vulnerabilities
- Metadata exposure
- Track changes leakage

**Mitigations:**
- Disable macros
- Metadata removal
- Clear track changes

**Best Practices:**
- Document sanitization before sharing
- Version control for sensitive documents

---

#### xlsx 🟡 B (Low Risk)
**Threats:**
- Formula injection attacks
- Macro-based malware
- Data exposure

**Mitigations:**
- Formula validation
- Disable macros
- Access controls

**Best Practices:**
- Validate all formulas
- Sanitize before sharing
- Use trusted Excel libraries

---

#### url-to-markdown 🟡 B (Low Risk)
**Threats:**
- Malicious content extraction
- Copyright violations
- Phishing site processing
- XSS in extracted content

**Mitigations:**
- URL validation and allowlisting
- Content sanitization
- Malware scanning

**Best Practices:**
- Validate URLs before processing
- Use only trusted sources
- Sanitize extracted content
- Respect copyright and robots.txt

---

#### markdown-to-html 🟡 B (Low Risk)
**Threats:**
- XSS vulnerabilities
- HTML injection
- Malicious script embedding

**Mitigations:**
- Sanitize HTML output
- Use secure Markdown parsers
- Content Security Policy

**Best Practices:**
- Validate all Markdown input
- Use trusted libraries
- Implement CSP headers
- Regular security updates

---

#### format-pro 🟢 A (Minimal Risk)
**Threats:**
- Minimal - formatting tool

**Mitigations:**
- Standard practices

**Best Practices:**
- Preserve document integrity
- Maintain formatting standards

---

## Overall Security Recommendations

### High Priority Actions
1. **API Key Management**: Implement secure credential storage for all skills requiring API keys
2. **Network Access Controls**: Restrict external network access where possible
3. **Code Review**: Mandatory review for all AI-generated code before deployment
4. **Security Scanning**: Implement automated security scanning in CI/CD pipelines
5. **Access Controls**: Implement least-privilege access for all skills
6. **Monitoring**: Deploy comprehensive logging and monitoring for all skill usage

### Skill-Specific Guidelines
- **High-Risk Skills (D-E)**: Require enterprise security review before production use
- **Moderate-Risk Skills (C)**: Require configuration review and monitoring setup
- **Low-Risk Skills (B)**: Follow standard security practices
- **Minimal-Risk Skills (A)**: Safe for general use with basic precautions

### Compliance Considerations
- GDPR compliance for skills processing personal data
- CCPA compliance for California residents
- HIPAA compliance for healthcare-related skills
- SOC 2 considerations for enterprise deployments
- Terms of service compliance for all third-party platforms

### Regular Security Maintenance
1. Review and update security assessments quarterly
2. Monitor for new vulnerabilities in dependencies
3. Update skills to address security patches
4. Conduct regular security audits
5. Maintain incident response plan
6. Document all security incidents and resolutions

---

## Security Metrics

| Risk Level | Count | Percentage |
|------------|-------|------------|
| 🟢 A (Minimal) | 24 | 48% |
| 🟡 B (Low) | 17 | 34% |
| 🟠 C (Moderate) | 6 | 12% |
| 🔴 D (High) | 3 | 6% |
| ⛔ E (Critical) | 0 | 0% |

**Overall Assessment**: The majority of OpenClaw skills (82%) present minimal to low security risk, making the platform generally safe for use with appropriate precautions. The 9 skills with moderate to high risk (18%) require additional security measures and should be deployed with enterprise-level security reviews.

---

## Conclusion

This security assessment provides a comprehensive evaluation of all 50 OpenClaw skills. While most skills are safe for general use, users should:

1. **Implement proper security controls** for high and moderate-risk skills
2. **Follow best practices** for credential management and access control
3. **Conduct regular security reviews** of their OpenClaw implementation
4. **Stay informed** about security updates and patches
5. **Maintain compliance** with relevant regulations and terms of service

**Next Steps:**
- Review skills in your installation against this assessment
- Implement recommended security controls
- Establish monitoring and incident response procedures
- Schedule regular security audits
- Train team members on secure skill usage

---

**Document Version:** 1.0.0  
**Last Updated:** 2026-02-23  
**Review Cycle:** Quarterly  
**Next Review:** 2026-05-23
