class User < ActiveRecord::Base
  validates :name,
            :last_name ,
            :city,
            format: {
              with: /\A[a-zA-Z ]+\z/, # TODO: describe what this regexp means
              message: "only allows letters" },
            presence: true
end
