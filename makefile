#

buildWeb:
	@echo "Building web..."
	@flutter build web

deployWeb: buildWeb
	@echo "Deploying web..."
	@firebase deploy --only hosting