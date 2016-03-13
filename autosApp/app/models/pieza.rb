class Pieza < ActiveRecord::Base
   belongs_to :car
   validates :nombre, presence: true
   validates :cantidad, presence: true
end
