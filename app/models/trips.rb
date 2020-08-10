require 'pry'


class Trip

    @@all=[]

    attr_accessor :guest, :listing

    def initialize(guest,listing)
        @guest=guest
        @listing=listing
        @@all << self

    end


    def self.all
        @@all
    end


end