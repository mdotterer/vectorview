module VectorView
  module TemplateHandler
    class Base < ActionView::TemplateHandler

      def render(template, locals)
        @view.send(:extend, VectorView::VectorViewHelper)
        @view.instance_eval template.source, template.filename, 1
        @view.convert_image
      end
    end
  end
end
