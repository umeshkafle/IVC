class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :courses, dependent: :destroy

         def admin?
         	has_role?(:admin)
         end

         def lecturer?
         	has_role?(:lecturer)
         end

         def student?
         	has_role?(:student)
         end
end
