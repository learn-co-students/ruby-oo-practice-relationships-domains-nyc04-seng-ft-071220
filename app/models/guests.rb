require 'pry'

class Guest


    @@all=[]

    attr_accessor :name


    def initialize(name)
        @name=name
        @@all << self
      
    end

    def self.all
        @@all
    end

    def get_all_trips
        Trip.all.map do|trip_info|
          trip_info
       #   binding.pry
        end
    end


    def listings
      trips.map do |trip_info| 
        trip_info.listing
      end
        end


        def trips
         get_all_trips.select do |trip_info|
           trip_info.guest==self
              

        #  binding.pry
         end
        end

      def trip_count
          trips.count
           end


      def self.pro_traveller
        self.all.select do|guest_info|
            guest_info.trip_count >1
        end

        end

        def self.find_all_by_name(name)
            self.all.select do |guest_info| 
                guest_info.name == name
            end
        end



end