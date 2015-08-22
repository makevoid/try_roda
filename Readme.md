# Roda example app

#### a more advanced example than  https://github.com/makevoid/roda_example_app

example app in Roda, routing tree microframework:

#### http://roda.jeremyevans.net

running on mbp retina 2.2ghz linux ubuntu quad core

rack env set to production (obviously)

roda:

    20k request/sec

vs

sinatra:

    4k req/sec

---

### running it:

    RACK_ENV=production puma


requirements:

    gem i bundler

    bundle
