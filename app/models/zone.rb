class Zone < ActiveRecord::Base
    has_and_belongs_to_many :companies

    validates :name, presence: :true
    
    # Valdiates color's HEX format
    validates_format_of :color, presence: :true, with: /\A^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$\z/
end
