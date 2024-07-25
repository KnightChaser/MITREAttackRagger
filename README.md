# MITREAttackRagger

<img src="https://ziadoua.github.io/m3-Markdown-Badges/badges/AWS/aws1.svg">
<img src="https://ziadoua.github.io/m3-Markdown-Badges/badges/Python/python1.svg">

A simple RAG demonstration based on MITRE ATT&amp;CK CTI(Cyber Threat Intelligence) information

- A simple Q&A demonstration with RAG(Retrieval Agumentation Generation) + LLM(GPT 4o Mini) about **MITRE ATT&CK Threat group information**
- Provides **references** for the responses for increasing credibility
- Uses **OpenSearch** or **Amazon OpenSearch Service** for vector database
- Uses `gpt-4o-mini`

### Example Q&A with `MITREAttackRagger`
```text
User question: Which techniques are used by the North Korean threat actor? Enumerate all the techniques they used.
Answer: {
  "answer": {
    "1": "Access Token Manipulation (ID: T1134): Lazarus Group keylogger KiloAlfa obtains user tokens from interactive sessions to execute itself with API call CreateProcessAsUserA under that user's context.",
    "3": "Adversary-in-the-Middle (ID: T1557): Lazarus Group executed Responder using the command [Responder file path] -i [IP address] -rPv on a compromised host to harvest credentials and move laterally.",
    "2": "User Execution (ID: T1204): During Operation Dream Job, Lazarus Group lured users into executing a malicious link to disclose private account information or provide initial access.",
    "4": "Acquire Infrastructure (ID: T1583): Lazarus Group has acquired domains related to their campaigns to act as distribution points and C2 channels.",
    "6": "Application Layer Protocol (ID: T1071): Lazarus Group has conducted C2 over HTTP and HTTPS.",
    "5": "Command and Scripting Interpreter (ID: T1059): Lazarus Group has used PowerShell to execute commands and malicious code.",
    "[general]": "Lazarus Group employs a wide range of techniques for various operations, including data exfiltration, persistence, and lateral movement."
  },
  "references": {
    "1": {
      "text": "Alyac. (2019, April 3). Kimsuky Organization Steals Operation Stealth Power. Retrieved August 13, 2019.",
      "url": "https://blog.alyac.co.kr/2234"
    },
    "2": {
      "text": "Dahan, A. et al. (2020, November 2). Back to the Future: Inside the Kimsuky KGH Spyware Suite. Retrieved November 6, 2020.",
      "url": "https://www.cybereason.com/blog/back-to-the-future-inside-the-kimsuky-kgh-spyware-suite"
    },
    "3": {
      "text": "KISA. (n.d.). Phishing Target Reconnaissance and Attack Resource Analysis Operation Muzabi. Retrieved March 7, 2022.",
      "url": "https://www.boho.or.kr/krcert/publicationView.do?bulletin_writing_sequence=35936"
      ...
      "url": "https://www.malwarebytes.com/blog/threat-intelligence/2021/06/kimsuky-apt-continues-to-target-south-korean-government-using-appleseed-backdoor"
    }
  }
}
```