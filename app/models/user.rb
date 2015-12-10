class User < ActiveRecord::Base
  validates :name,
            :last_name ,
            :city,
            format: {
              with: /\A[a-zA-Z]+\z/,
              message: "only allows letters" },
            presence: true
end
