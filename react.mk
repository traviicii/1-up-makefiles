# Makefile for React Project Automation with Vite

# Variables
APP_NAME=my-react-app
NPM=npm

# Target to create a new React app using Vite
create:
	@echo "Creating a new React app with Vite..."
	npx create-vite@latest $(APP_NAME) --template react
	cd $(APP_NAME) && $(NPM) install
	@echo "React app created in $(APP_NAME)/."

# Target to clean unnecessary default files (optional step)
clean:
	rm -f $(APP_NAME)/src/App.css $(APP_NAME)/src/index.css $(APP_NAME)/src/assets/react.svg $(APP_NAME)/public/vite.svg
	@echo "Unnecessary files removed from $(APP_NAME)/src."

# Target to run the development server
dev:
	@echo "Development server running for $(APP_NAME)/."
	cd $(APP_NAME) && $(NPM) run dev

# Target to build the project for production
build:
	cd $(APP_NAME) && $(NPM) run build
	@echo "Production build complete for $(APP_NAME)/."

# Target to clean the build files
clean-build:
	rm -rf $(APP_NAME)/dist
	@echo "Build files cleaned from $(APP_NAME)/dist."

# Target to clean up the entire project directory
clean-all:
	rm -rf $(APP_NAME)
	@echo "Cleaned up the project directory $(APP_NAME)/."
