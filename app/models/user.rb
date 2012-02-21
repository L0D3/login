require 'digest/md5'
class User < ActiveRecord::Base
  set_table_name "login"
  set_primary_key "id"
  has_many :albums ,:foreign_key=>"creator", :primary_key=>"username"
  attr_accessible :username, :password, :password_confirmation, :firstname, :lastname, :email

  attr_accessor :password
  before_save :encrypt_password
  validates_confirmation_of :password

  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :username
  validates_uniqueness_of :username

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.pword == Digest::MD5.hexdigest(password)
      user
    else
      nil
    end
  end
  def encrypt_password
    if password.present?
      self.pword=Digest::MD5.hexdigest(password)
    end
  end


end
