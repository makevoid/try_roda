# Roda example app

#### a more advanced example than  https://github.com/makevoid/roda_example_app

example app in Roda, routing tree microframework:

#### http://roda.jeremyevans.net

running on mbp retina 2.2ghz linux ubuntu quad core (puma web server, thin may be a bit better/worse depending your environment)

rack env set to production (obviously)

roda:

    20k request/sec

vs

sinatra:

    4k req/sec


---

20k request/sec on my machine is almost rack speed

I would like to see a bench github project that compares 

---

### running it:

    RACK_ENV=production puma


requirements:

    gem i bundler

    bundle


### tags: bench, benchmarks, roda, ruby, puma, nginx, thin, servers,
### tags: #bench #benchmarks #roda #ruby #puma #nginx #thin #servers
