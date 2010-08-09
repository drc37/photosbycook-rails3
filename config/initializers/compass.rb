# If you have any compass plugins, require them here.
# Compass.configuration.add_project_configuration(File.join(Rails.root, "config", "compass.config"))
Compass.add_project_configuration(Rails.root.join("config", "compass.config"))
Compass.configuration.environment = Rails.env.to_sym
Compass.configure_sass_plugin!
  
#   Used to tell rack to look for stylesheets in tmp/stylesheets 
# There is a problem with this in Heroku and the natively ready-only file structure
ActionController::Dispatcher.middleware.use(Rack::Static, :root => “tmp/”, :urls => [“/stylesheets/compiled”])