install: git-hooks grunt-tape
		bower install; \
		npm install; \
		npm run-script update-webdriver;

clean:
		rm -rf node_modules vendor build bin tmp;

reset: clean install

grunt-tape:
		rm -rf ./node_modules/grunt-tape; \
		git clone git@github.com:cosmopolithome/grunt-tape.git ./node_modules/grunt-tape; \
		cd ./node_modules/grunt-tape; \
		npm install; \
		cd ../..;

git-hooks:
		cp ./project_hooks/pre-push ./.git/hooks/pre-push; \
		chmod +x ./.git/hooks/pre-push;