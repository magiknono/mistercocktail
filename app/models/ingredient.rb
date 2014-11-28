class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses
  validates :name, presence: true
  # validates_presence_of :name #avantageux pour en ajouter plusieurs
end
