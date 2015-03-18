class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatables

    has_and_belongs_to_many :companies
    
    validates :name, presence: true
    validates :second_name, presence: true

    # Joins user's first and last names into one string
    def full_name
        [self.name, self.second_name].join(' ')
    end

    # Checks if current user is admin
    def admin?
        self.admin
    end
end