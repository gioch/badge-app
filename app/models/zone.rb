class Zone < ActiveRecord::Base
    validates :name, presence: :true
    validates_format_of :color, presence: :true, with: /\A^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$\z/
end
