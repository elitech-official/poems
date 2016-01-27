class Cycle < ActiveRecord::Base
  
  has_many :poems, dependent: :destroy
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
  
end
