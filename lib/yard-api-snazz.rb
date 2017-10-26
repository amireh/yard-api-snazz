require 'yard'
require 'yard-api'

module YARD
  module APISnazzPlugin
    ROOT          = File.dirname(__FILE__)
    TEMPLATE_PATH = File.join(%W[#{ROOT} .. templates])
  end

  module Templates
    Engine.register_template_path YARD::APISnazzPlugin::TEMPLATE_PATH
  end
end
