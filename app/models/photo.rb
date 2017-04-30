class Photo < ApplicationRecord
  validates_presence_of :title, :date, :description, :file_location
end
