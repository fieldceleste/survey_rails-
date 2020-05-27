class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  before_save(:titleize_survey)

  private
    def titleize_survey
      self.name = self.name.titleize
    end
end