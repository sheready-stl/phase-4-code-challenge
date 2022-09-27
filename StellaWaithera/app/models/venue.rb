class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.filter {|concert| concert.venue == self}
    end

    def bands
        Concert.all.filter {|concert| concert.band == self}
    end

    def concert_on(date)
        Concert.find{|concert| concert.date == date}
    end

    def most_frequent_band
        band_concert = Concert.max_by {|concert| concerts.count(concert.band)}
        band_concert.band
    end
end
