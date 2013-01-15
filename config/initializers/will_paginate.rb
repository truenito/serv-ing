WillPaginate.per_page = 1

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options[:renderer] ||= BootstrapLinkRenderer
      super.try :html_safe
    end

    class BootstrapLinkRenderer < LinkRenderer
      protected
      def html_container(html)
        tag :div, tag(:ul, html), container_attributes
      end

      def page_number(page)
        tag :li, link(page, page, :rel => rel_value(page), :target => "_self"), :class => "nice small"
      end

      def previous_or_next_page(page, text, classname)
        tag :li, link(text, page || '#', :target => "_self"), :class => "nice small"
      end

      def gap
        tag :li, link(super, '#'), :class => 'disabled'
      end
    end
  end
end