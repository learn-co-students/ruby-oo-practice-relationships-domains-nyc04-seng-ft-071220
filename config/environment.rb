require 'bundler/setup'
Bundler.require
require_all 'app'






# guest1=Guest.new("Christy")
# guest2=Guest.new("Emily")
# guest3=Guest.new("Joby")
# guest4=Guest.new("Colleen")

# list1=Listing.new("New York")

# list2=Listing.new("California")

# list3=Listing.new("Hawaii")


# trip1=Trip.new(guest1, list1)
# trip2=Trip.new(guest2, list2)
# trip3=Trip.new(guest3, list3)

# list1.guests
# guest4.listings

christy=Guest.new("Christy")
joby=Guest.new("Joby")
colleen=Guest.new("colleen")


new_york=Listing.new("New York")
cali=Listing.new("California")
hawaii=Listing.new("hawaii")

honeymoon=Trip.new(christy, new_york)
vaanncation=Trip.new(joby, cali)
birthday=Trip.new(joby, hawaii)
anniv=Trip.new(colleen, new_york)


christy.listings

hawaii.guests
christy.trips
joby.trip_count

Guest.pro_traveller
Guest.find_all_by_name(christy)

hawaii.guests
cali.trips

Listing.find_all_by_city("hawaii")
Listing.find_all_by_city("new_york")
Listing.most_popular
















binding.pry
0
