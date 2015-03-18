class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
    validates :name, presence: true
    validates :second_name, presence: true

    def full_name
        self.name + ' ' + self.second_name
    end

    def admin?
        self.admin
    end
end
