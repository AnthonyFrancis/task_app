class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy


  after_create :create_getting_started

  def create_getting_started
    Project.create(:user_id => self.id, :project_name => "Getting Started")
  end

end
