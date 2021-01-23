class Cab < ActiveRecord::Base
  has_attached_file :car_photo
  validates_attachment :car_photo,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 5.megabyte }
end
