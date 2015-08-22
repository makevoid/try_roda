require "roda"

class App < Roda
  # use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      "{ body: 'hello world', current_time_s: '#{Time.now}' }"
    end
  end
end

run App.freeze.app
