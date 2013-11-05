class User < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :authentication_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable
  
  before_save :ensure_authentication_token

  validates :username, :presence => true
  validates :email, :presence => true
  validates_uniqueness_of    :email,     :case_sensitive => false, :allow_blank => true, :if => :email_changed?, :scope => :id
  validates_presence_of   :password, :on=>:create
  validates_confirmation_of   :password, :on=>:create
  validates_length_of :password, :within => Devise.password_length, :allow_blank => true

  has_many :items

  # Includes acts_as_api gem to format JSON
  acts_as_api

  api_accessible :public do |template|
    template.add :id 
    template.add :username
    template.add :email
    template.add :authentication_token
  end

  def after_token_authentication
    update_attributes :authentication_token => nil
  end

  # FactoryGirl.define do
  #  factory :user do
  #    username "Anisha"
  #    email "anisha@vasandani.com"
  #  end
  # end

end
