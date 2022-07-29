class Specialty < ApplicationRecord
  has_many :doc_assigns
  has_many :doctors, through: :doc_assigns
end
