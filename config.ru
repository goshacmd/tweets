require 'bundler'
Bundler.require(:default)

class App < Sinatra::Application
  set :public_folder, File.join(Dir.pwd, 'archive')

  get '/' do
    File.read(File.join(settings.public_folder, 'index.html'))
  end
end

run App
