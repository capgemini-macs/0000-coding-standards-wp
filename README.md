# 0000-coding-standards-wp
WordPress PHPCS coding standards unified

# How to use

## 1. Install PHPCS

In your terminal run `phpcs --version` to make sure the CodeSniffer is installed on your machine. It should be updated to the latest version.

If `phpcs` is not installed, my recommendation is to install it via homebrew:
1. Install Homebrew https://brew.sh/
2. Install phpcs with brew: `brew install php-code-sniffer`
3. Instal phpcs fixer with brew: `brew install php-cs-fixer`

Make sure phpcs is installed properly by running `phpcs --version` in your terminal. You might need to restart the terminal first.

## 2. Install coding standards

1. Clone this repository to your local machine
2. In the location of the repository run `sh install.sh`. The script will pull and set up required phpcs coding standards.

## 3. Visual Studio Code setup

1. Install extension https://marketplace.visualstudio.com/items?itemName=ValeryanM.vscode-phpsab
2. Go to extension settings in VSC
     - Check the box in `Auto Ruleset Search` option
     - In the field `Phpsab: Executable Path CS` set up the path to your phpcs. You can get it from terminal by running `which phpcs`
     - In the field `Phpsab: Executable Path CBF` set up the path to your phpcs beautifier. You can get it from terminal by running `which phpcbf`
  
  Alternatively you can set it up in extension's settings.json
  ```
{
    "editor.unusualLineTerminators": "off",
    "security.workspace.trust.untrustedFiles": "open",
    "phpcs.executablePath": "/opt/homebrew/bin/phpcs",
    "editor.stickyScroll.enabled": true,
    "php.debug.executablePath": "/opt/homebrew/bin/php",
    "phpcs.standard": "WordPress-VIP-Go",
    "php.validate.executablePath": "/opt/homebrew/bin/php",
    "github.copilot.advanced": {},
    "editor.inlineSuggest.enabled": true,
    "phpcs.ignorePatterns": [
        "vendor/"
    ],
    "phpsab.snifferShowSources": true,
    "phpsab.executablePathCS": "/opt/homebrew/bin/phpcs",
    "phpsab.executablePathCBF": "/opt/homebrew/bin/phpcbf",
    "phpsab.debug": true,
    "phpsab.snifferArguments": [],
    "phpsab.allowedAutoRulesets": [
        
        ".phpcs.xml",
        ".phpcs.xml.dist",
        "phpcs.xml",
        "phpcs.xml.dist",
        "phpcs.ruleset.xml",
        "ruleset.xml"
    ]
}
```
