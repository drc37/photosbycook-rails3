# If you have any compass plugins, require them here.
# Compass.configuration.add_project_configuration(File.join(Rails.root, "config", "compass.config"))
Compass.add_project_configuration(File.join(Rails.root, "config", "compass.config"))
Compass.configuration.environment = Rails.env.to_sym
Compass.configure_sass_plugin!
  