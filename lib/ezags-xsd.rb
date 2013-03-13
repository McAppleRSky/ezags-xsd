require 'ezags-xsd/version'
require 'ezags-xsd/middleware'
require 'xml_schema_mapper'

Dir[File.expand_path('../../app/mappers', __FILE__) + '/*'].each do |file|
  require file
end

module Ezags
  module Xsd
    def self.protocols_root
      Pathname.new(File.expand_path('../../vendor/ezags-protocols', __FILE__))
    end

    if defined?(Rails) && defined?(Rails::Engine)
      class Protocols < Rails::Engine
        initializer "ezags.xsd.protocols.add_middleware" do |app|
          app.middleware.use Ezags::Xsd::Middleware
        end
      end
    end
  end
end
