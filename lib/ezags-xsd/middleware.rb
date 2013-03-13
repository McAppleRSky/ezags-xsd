module Ezags
  module Xsd
    class Middleware
      def initialize(app, options = {})
        @files = Dir[Ezags::Xsd.protocols_root.join('**/**/*.xsd').to_s, Ezags::Xsd.protocols_root.join('*.xsd').to_s]
        #@files.concat Dir[Ezags::Xsd.protocols_root.join('**/**/*.wsdl').to_s, Ezags::Xsd.protocols_root.join('*.wsdl').to_s]

        @path_cache, @render_cache = {}, {}
        @app = app
      end

      def call(env)
        if env['PATH_INFO'] =~ /\.xsd$/
          file = find_file(env['PATH_INFO'])
          if file
            [200, {'Content-Type' => 'application/xml; charset=utf-8'}, [rewrite_xsd(file)]]
          else
            [404, {}, []]
          end
        else
          @app.call(env)
        end
      end

      def find_file(path)
        @path_cache[path] ||= @files.find {|f| f =~ /#{path}$/ }
      end

      def rewrite_xsd(file)
        @render_cache[file] ||= File.read(file).gsub(/schemaLocation="(.*?)"/) do
          location = $1
          new_location = location.gsub(/(\.\.\/)*/,'')
          %Q{schemaLocation="/#{new_location}"}
        end
      end
    end
  end
end
