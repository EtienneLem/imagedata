require 'base64'
require 'open-uri'
require 'multi_json'

# Bundler
require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV']

# Helpers
helpers do
  def get_image_data(url)
    uri = URI(url)
    image = open(uri)
    base64 = "data:#{image.content_type};base64,#{Base64.encode64(image.read)}"

    if callback = params[:callback]
      content_type :js
      "#{callback}(#{MultiJson.dump({base64: base64})})"
    else
      base64
    end
  end
end

# Web app
before do
  redirect request.path.sub(/\/$/, '') if request.path =~ /.+\/$/
end

get '/' do
  if url = params[:url]
    get_image_data(url)
  else
    'https://github.com/EtienneLem/imagedata'
  end
end

run Sinatra::Application
