class Document < ApplicationRecord

  DOC_TYPES = ['marksheet', 'educational', 'education','others']

  belongs_to :employee

  has_one_attached :image

  validates :name, :doc_type , presence: true

end
