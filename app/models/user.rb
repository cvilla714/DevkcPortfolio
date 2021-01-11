class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  # petergate(roles: [:admin, :editor], multiple: false)
  petergate(roles: [:site_admin], multiple: false) ##
  ############################################################################################

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  has_many :blogs, foreign_key: :author_id, source: :blogs
  # has_many :articles, foreign_key: :author_id, source: :articles

  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
