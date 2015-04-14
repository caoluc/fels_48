class Answer < ActiveRecord::Base
  belongs_to :word
  has_many :answer_sheets, dependent: :destroy

  validates :word_id, presence: true
  validates :content, presence: true, length: {maximum: 100}
  validates :correct, inclusion: {in: [true, false]}
  validates :correct, exclusion: {in: [nil]}
end
