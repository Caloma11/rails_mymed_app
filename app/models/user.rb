class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :doctor
  has_one :patient

  accepts_nested_attributes_for :patient
  accepts_nested_attributes_for :doctor

  after_initialize do
    if new_record? && self.user_type == 'doctor' && doctor.blank?
      build_doctor
    elsif
      new_record? && self.user_type == 'patient' && patient.blank?
    end
  end

end
