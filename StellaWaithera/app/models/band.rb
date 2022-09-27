class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.filter{|concert| comcert.band == self}
    end

    def play_in_venue(venue, date)
        Concert.new(date, venue, self)
    end

    def all_introductions
        Concert.map{|concert| concert.introduction}
    end
end
