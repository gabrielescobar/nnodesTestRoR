class Car < ActiveRecord::Base

    has_many :piezas, dependent: :destroy

    validates :marca, presence: true
    validates :modelo, presence: true
    validates_numericality_of :lat, :greater_than_or_equal_to => -85.00, :less_than_or_equal_to => 85.00, :message => "debe estar en un rango entre -85 a 85"
    validates_numericality_of :long, :greater_than_or_equal_to => -180.00, :less_than_or_equal_to => 180.00, :message => "debe estar en un rango entre -180 a 180"

    after_initialize :init
       def init
         self.lat  ||= rand(-85.00...85.00)           #will set the default value only if it's nil
         self.long ||= rand(-180.00...180.00)         #ill set the default value only if it's nil
       end
end
