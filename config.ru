require "roda"

class App < Roda
  # use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      "hello world"
    end
  end
end

run App.freeze.app
