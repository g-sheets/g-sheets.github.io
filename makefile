# upload with date now
up:
	git add . ;\
	git commit -m "Update: `date +'%Y-%m-%d %H:%M:%S'`" ;\
	git push

# upload submodule changes with date now
sup:
	git submodule sync --recursive ;\
	cd themes/gss-hugo ;\
	git fetch ;\
	git checkout origin/main ;\
	git branch main -f ;\
	git checkout main ;\
	git add . ;\
	git commit -m "Update submodule: `date +'%Y-%m-%d %H:%M:%S'`" ;\
	git push ;\
	cd ../..

# pull of repository and update the submodules
down:
	git pull ;\
	git submodule update --recursive --remote