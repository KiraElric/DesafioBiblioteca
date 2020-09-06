class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :state, presence: true
  validates :holder, presence: true
  validates :lend_date, presence: true

  enum state: [:en_biblioteca, :prestado]

  paginates_per 10
end
