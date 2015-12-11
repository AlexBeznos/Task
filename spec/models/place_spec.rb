require 'rails_helper'

describe Place do
    it "is valid with a name, address and owner" do
    place = Place.new name:        'Vasya',
                     address:     'Bitch 17',
                     owner:       'Big Dick'

    expect(place).to be_valid
    end
end
