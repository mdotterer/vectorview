require 'vector_view'

Mime::Type.register "image/gif", :gif
Mime::Type.register "image/png", :png
Mime::Type.register "image/jpeg", :jpg

ActionView::Template.register_template_handler 'rvg', VectorView::TemplateHandler::Base
