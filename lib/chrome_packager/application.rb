require 'haml'
require 'sinatra'

module ChromePackager
  class Application < Sinatra::Base
    set :root, 'app'

    get "/" do
      haml :index
    end
  end
end
