class Cat < ApplicationRecord
  # not sure if should be class or module constant
  # also not sure if should be symbols or strings
  COLORS = [:blue, :red, :yellow]
  validates :color, inclusion: { in: COLORS}, presence: true
  validates :sex, inclusion: { in: %w(M F) }, presence: true
  validates :birth_date, presence: true
  validates :name, presence: true

  def age
    years_old = Time.now.year - @birth_date.year

  end

end
