class Car < ActiveRecord::Base

    has_many :piezas, dependent: :destroy

    validates :marca, presence: true
    validates :modelo, presence: true

    after_initialize :init
       def init
         self.lat  ||= rand(-85.00...85.00)           #will set the default value only if it's nil
         self.long ||= rand(-180.00...180.00)         #ill set the default value only if it's nil
       end
end
