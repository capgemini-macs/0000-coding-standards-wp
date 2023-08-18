#!/bin/sh

# Set the variable for bash behavior
shopt -s nullglob
shopt -s dotglob

echo "Pulling coding standards from submodules..."
echo ""

git submodule update --init --recursive

echo ""
echo "Done!"
echo ""
# phpcs -i

echo "Setting up standards in your PHPCS..."

phpcs --config-set installed_paths "${PWD}/PHPCompatibility,${PWD}/PHPCompatibilityWP,${PWD}/phpcs-variable-analysis/VariableAnalysis,${PWD}/PHPCSExtra,${PWD}/PHPCSUtils/PHPCSUtils,${PWD}/WordPress-Coding-Standards/WordPress,${PWD}/WordPress-Coding-Standards/WordPress-Core,${PWD}/WordPress-Coding-Standards/WordPress-Extra,${PWD}/WordPress-Coding-Standards/WordPress-Docs,${PWD}/VIP-Coding-Standards/WordPressVIPMinimum,${PWD}/VIP-Coding-Standards/WordPress-VIP-Go"

echo "Done!"
echo ""
echo ""
echo "Use:"
echo "   phpcs -i"
echo "any time you want to see installed standards list."
echo ""
echo ""
echo "Currently installed standards are:"
echo ""
echo "---------------------------------"
phpcs -i
echo "---------------------------------"
echo ""
echo "Following standards should be present (among others): PHPCompatibilityWP, WordPress, WordPress-Core, WordPress-Docs, WordPress-Extra, WordPressVIPMinimum and WordPress-VIP-Go"