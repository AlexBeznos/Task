class Place < ActiveRecord::Base
  validates :name,
            :address ,
            :owner,
            format: {
              with: /\A[a-zA-Z]+\z/,
              message: "only allows letters" },
            presence: true
end
