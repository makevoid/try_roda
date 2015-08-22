require "roda"
require "oj"

class App < Roda
  # use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      # version A: text
      # { body: 'hello world', current_time_s: '#{Time.now}'
      #
      # version B: json
      hash = {
        message: "hello world",
        time:    "#{Time.now}",
      }
      Oj.dump Hash[hash.map{ |k,v| [k.to_s, v] }]
    end


    r.on "hello" do
      @greeting = 'Hello'
      some_func = -> { puts 'it functions!' }

      r.get "world" do
        "#{@greeting} world!"
      end

      # /hello request
      r.is do
        # GET /hello request
        r.get do
          "#{@greeting}!"
        end

        # POST /hello request
        r.post do
          puts "Someone said #{@greeting}!"
          some_func.() # .call
          r.redirect
        end
      end
    end

  end
end

run App.freeze.app
