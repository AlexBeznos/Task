class Place < ActiveRecord::Base
  validates :name,
            :address ,
            :owner,
            format: {
              with: /\A[a-zA-Z]+\z/,
              message: "only allows letters" }, # FIXME: why do you think, address not gonna contain any numerical charachters?
            presence: true
end
