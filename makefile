# upload with date now
up:
	git add . ;\
	git commit -m "Update: `date +'%Y-%m-%d %H:%M:%S'`" ;\
	git push

# pull of repository and update the submodules
down:
	git pull ;\
	git submodule update --recursive --remote