# Makefile for React Project Automation

# Variables
APP_NAME=my-react-app
NPM=npm

# Target to create a new React app using vite
create:
	@echo "Creating a new React app with Vite..."
	npx create-vite@latest $(APP_NAME) --template react
	cd $(APP_NAME) && $(NPM) install
	@echo "React app created in $(APP_NAME)/"

# Target to clean up unnecessary default files
clean:
	rm -rf $(APP_NAME)/src/App.css $(APP_NAME)/src/index.css $(APP_NAME)/src/assets/react.svg $(APP_NAME)/public/vite.svg
	@echo "Unnecessary files removed from $(APP_NAME)/"

# Target to run our development environment
dev:
	@echo "Development server running..."
	cd $(APP_NAME) && $(NPM) run dev

# Target to build the project for production
build:
	cd $(APP_NAME) && $(NPM) run build
	@echo "Production build complete for $(APP_NAME)."

# Target to clean up build files
clean-build:
	rm -rf $(APP_NAME)/dist
	@echo "Build files cleaned from $(APP_NAME)."

# Target to clean entire project directory
clean-all:
	rm -rf $(APP_NAME)
	@echo "Cleaned up the project directory $(APP_NAME)."