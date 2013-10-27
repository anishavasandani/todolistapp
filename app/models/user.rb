class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  validates_presence_of :username
  
  has_many :items

  # Includes acts_as_api gem to format JSON
  acts_as_api

  api_accessible :public do |template|
    template.add :id 
    template.add :username
    template.add :email
  end

  api_accessible :private do |template|
    template.add :password
    template.add :password_confirmation 
  end
end
