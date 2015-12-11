require 'rails_helper'

describe Place do
    it "is valid with a name, address and owner" do
    place = Place.new name:        'Vasya',  # it's shit. find out how to use shoulda_matchers(for validations testing) and factory_girl(for factory creations) also in factory creation u need to use Faker gem to make fake data
                     address:     'Bitch 17',
                     owner:       'Big Dick'

    expect(place).to be_valid
    end
end
