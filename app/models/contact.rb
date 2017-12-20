class Contact < ApplicationRecord
  belongs_to :kind, optional: true
  has_one :address
  has_many :phones

  accepts_nested_attributes_for :address # aceita atributos de outra model
  accepts_nested_attributes_for :phones , reject_if: :all_blank, allow_destroy: true
end
