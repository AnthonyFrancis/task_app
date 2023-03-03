class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy


  after_create :create_project_and_subproject

  def create_project_and_subproject
    project = Project.create(user: self, project_name: "Getting Started")
    project.subprojects.create(subproject_name: "Here are the basics")    
  end

end
