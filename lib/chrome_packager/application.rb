require 'haml'
require 'sinatra'

module Haml
  module Helpers
    def stylesheet_link_tag(asset)
      "<link href='/assets/#{asset}.css' media='screen' rel='stylesheet' type='text/css'>"
    end

    def javascript_include_tag(asset)
      "<script src='/assets/#{asset}.js'></script>"
    end
  end
end

module ChromePackager
  class Application < Sinatra::Base
    set :root, 'app'

    get "/" do
      haml :index
    end
  end
end
