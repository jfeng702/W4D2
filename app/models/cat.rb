class Cat < ApplicationRecord
  # not sure if should be class or module constant
  COLORS = ['blue', 'red', 'yellow']
  validates :color, inclusion: { in: COLORS}, presence: true
  validates :sex, inclusion: { in: %w(M F) }, presence: true
  validates :birth_date, presence: true
  validates :name, presence: true

  def age
    years_old = Time.now.year - self.birth_date.year
  end

end
