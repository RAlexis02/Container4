require "sinatra"

set :bind, '0.0.0.0'  
set :port, 4567       

get "/" do
  "Hola Mundo desde Ruby con Sinatra!"
end
