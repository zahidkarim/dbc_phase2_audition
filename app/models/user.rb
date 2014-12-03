class User < ActiveRecord::Base
  #auth
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  #app
  has_many :playlists
  has_many :songs, through: :playlists

end
