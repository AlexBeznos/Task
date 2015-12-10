class Place < ActiveRecord::Base
  validates :name,
            :owner,
            format: {
              with: /\A[a-zA-Z]+\z/,
              message: "only allows letters" }, #
            presence: true
  validates :address ,
            format: {
              with: /\A[a-zA-Z1-9\.]+\z/,
              message: "only allows letters digits and dots" },
            presence: true
end
