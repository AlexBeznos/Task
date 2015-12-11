require 'rails_helper'

describe User do
    it "is valid with a name, last name and city" do
    user = User.new  name:       'Vasya',
                     last_name:  'Bitch',
                     city:       'Big Dick'

    expect(user).to be_valid
    end
end
