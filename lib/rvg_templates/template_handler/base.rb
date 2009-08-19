module RvgTemplates
  module TemplateHandler
    class Base < ActionView::TemplateHandler

      def render(template, locals)
        @view.send(:extend, RvgTemplates::RvgHelper)
        @view.instance_eval template.source, template.filename, 1
        @view.convert_image
      end
    end
  end
end
