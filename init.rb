require 'redmine'
require 'application_helper_patch'

Redmine::Plugin.register :redmine_project_quickselect_improve do
  name 'Redmine improve project quick select'
  author 'credativ Ltd'
  description 'Remove the odd characters from the project quick select in order to allow easy keyboard select of subprojects'
  version '1.0.0'
  requires_redmine :version_or_higher => '2.3.0'
end
