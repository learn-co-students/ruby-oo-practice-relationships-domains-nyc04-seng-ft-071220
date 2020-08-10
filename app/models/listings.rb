require 'pry'

class Listing

    @@all=[]

    attr_accessor :city


    def initialize(city)
        @city=city
        @@all << self
    end

    def self.all
        @@all
    end


    def trips
        Trip.all.select do |trip_info|
          trip_info.listing==self
       #  binding.pry
        end
       end

    def guests
      trips.map do |listing|
        listing.guest
    
        #binding.pry
       end
     end


     def trip_count
        trips.count
     end

     def self.find_all_by_city(city)
        self.all.select do |info|
            info.city==city
        end
    end

    def self.most_popular
      self.all.max_by do|listing|
        listing.trip_count
      end
    end




end