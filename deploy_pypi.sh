#!/usr/bin/zsh

echo "Deploying to PyPI"
echo "Be sure to update the version in setup.py before deploying!"
# Remove old dist files and egg-info
rm -rf dist *.egg-info
# Build the package
python setup.py sdist
# Upload to PyPI
twine upload dist/*
