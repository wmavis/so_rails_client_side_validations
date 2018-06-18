class User < ApplicationRecord
  validates :name, :email, presence: true, length: { maximum: 10 }, if: :can_validate?

  def can_validate?
    true
  end
end
