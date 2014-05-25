
class LiveResults
  URL = "http://www.stadt-muenster.de/ms/wahlen/ergebnis/app/gw2014.js"
  def initialize
    @js = ScraperWiki.scrape(URL)
  end
  def results
    @js
  end
end
