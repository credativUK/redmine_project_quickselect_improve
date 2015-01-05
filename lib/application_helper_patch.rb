require_dependency 'application_helper'

module ApplicationHelperPatch
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      alias_method_chain :project_tree_options_for_select, :no_arrow
    end
  end

  module InstanceMethods
    def project_tree_options_for_select_with_no_arrow(projects, options = {})
        s = ''
        project_tree(projects) do |project, level|
            name_prefix = (level > 0 ? '&nbsp;' * 2 * level : '').html_safe
            tag_options = {:value => project.id}
            if project == options[:selected] || (options[:selected].respond_to?(:include?) && options[:selected].include?(project))
                tag_options[:selected] = 'selected'
            else
                tag_options[:selected] = nil
            end
            tag_options.merge!(yield(project)) if block_given?
            s << content_tag('option', name_prefix + h(project), tag_options)
        end
        s.html_safe
    end
  end
end

ApplicationHelper.send(:include, ApplicationHelperPatch)