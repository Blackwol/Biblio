class User < ActiveRecord::Base
  extend Devise::Models

  validates_presence_of :name, :email, :date
  validates_uniqueness_of :cpf
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
