require 'rvg_templates'

Mime::Type.register "image/gif", :gif
Mime::Type.register "image/png", :png
Mime::Type.register "image/jpeg", :jpg

ActionView::Template.register_template_handler 'rvg', RvgTemplates::TemplateHandler::Base
