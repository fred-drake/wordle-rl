# Python Boilerplate
This is my end-to-end boilerplate for Python projects.  It comes baked in with the following implemented:

* Docker environment integrations for both development and production
* VS Code integrations for seamless IDE functionality
* Poetry for package management
* Flake8 and wemake-python-styleguide linting rules
* mypy for type checking
* pytest for unit testing
* coverage for HTML coverage reporting

This is intended to be run using the Docker containerized build environment for the best chance at a consistent experience.  Virtual environment functionality is disabled, as all libraries are intended to be installed in the container.

The linting is fairly strict.  By default, a production build will fail if any linting rules are violated.  Modify accordingly.