spec = Gem::Specification.new do |s|
  s.name        = "vectorview"
  s.version     = "0.0.1"
  s.summary     =  "RVG views for Rails"
  s.description = "A Rails Plugin that allows images to be generated as views using RMagick's Ruby Vector Graphics (RVG) interface."
  s.authors     = ["Michael Dotterer"]
  s.email       = "mike@selzzup.com"
  s.files = %w(lib/vector_view
               lib/vector_view/template_handler
               lib/vector_view/template_handler/base.rb
               lib/vector_view/vector_view_helper.rb
               lib/vector_view.rb
               LICENSE
               rails/init.rb
               README)
  s.add_dependency "rmagick"
end
