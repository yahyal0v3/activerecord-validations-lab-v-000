class Post < ActiveRecord::Base
  validates :title, presence: true
  validates(:content, { :length => { :minimum => 250 } })
  validates(:summary, { :length => { :maximum => 250 } })
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :clickbait

  def clickbait
    if title
      unless title.match(/Won't Believe | Secret | Top \d+ | Guess/)
    end 
  end
end
