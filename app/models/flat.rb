class Flat < ApplicationRecord
  geocoded_by :address # geocoding the address of the flat
  after_validation :geocode, if: :will_save_change_to_address? # after validation, geocode the address if it has changed
end
