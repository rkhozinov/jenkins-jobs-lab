plugins_file="plugins"
reqs_file="requirements"
url_file="url"

all: clean install get_plugins

install:
	sudo pip install --upgrade -r $(reqs_file)
get_plugins:
	python2 ./get_plugins.py `cat $(url_file)` > $(plugins_file)
clean:
	[ -f $(reqs_file) ] && rm -rf $(plugins_file)

