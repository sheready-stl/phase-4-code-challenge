class Concert
  @@all = []
  attr_accessor :date, :venue, :band

  def initialize(date, venue, band)
    @date = date
    @venue = venue
    @band = band
  end

  def self.all
      @@all
  end

  def band
      band = @band
      band
  end

  def venue
      venue = @venue
      venue
  end

  def hometown_show
      if band.hometown == venue.city
          true
      else
          false
      end
  end

  def introduction
      "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
  end
end
