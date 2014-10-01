

Venue.destroy_all
Band.destroy_all
Event.destroy_all
BandEvent.destroy_all

# create_table "venues", force: true do |t|
#   t.string   "name"
#   t.string   "city"
#   t.string   "state"
#   t.boolean  "family_frielndly", default: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
Venue.create(name: "Brooklyn Bowl", city: "Brooklyn", family_friendly: true)
Venue.create(name: "The High Dive", city: "Seattle", family_friendly: false)
Venue.create(name: "930 Club", city: "Washington DC", family_friendly: false)
