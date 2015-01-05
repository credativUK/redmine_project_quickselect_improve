# Redmine improve project quick select

Remove the odd characters from the project quick select in order to allow easy keyboard select of subprojects

## Features

* Allows quick select of sub-projects using the keyboard for sub-projects usually prefixed by an arrow character

## Getting the plugin

A copy of the plugin can be downloaded from GitHub: http://github.com/credativUK/redmine_project_quickselect_improve

## Installation

To install the plugin clone the repro from github and migrate the database:

```
cd /path/to/redmine/
git clone git://github.com/credativUK/redmine_project_quickselect_improve.git plugins/redmine_project_quickselect_improve
rake db:migrate_plugins RAILS_ENV=production
```

To uninstall the plugin migrate the database back and remove the plugin:

```
cd /path/to/redmine/
rake db:migrate:plugin NAME=redmine_project_quickselect_improve VERSION=0 RAILS_ENV=production
rm -rf plugins/redmine_project_quickselect_improve
```

Further information about plugin installation can be found at: http://www.redmine.org/wiki/redmine/Plugins

## Compatibility

The latest version of this plugin is only tested with Redmine 2.3.x.


## License

This plugin is licensed under the GNU GPLv2 license. See LICENSE-file for details.

## Copyright

Copyright (c) 2015 credativ Ltd.

