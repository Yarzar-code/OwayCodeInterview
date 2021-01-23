class CabSerializer < ActiveModel::Serializer
  attributes :id, :plate_number, :model, :mileage, :car_photo
end
