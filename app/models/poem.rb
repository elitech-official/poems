class Poem < ActiveRecord::Base
  belongs_to :cycle
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def normalize_friendly_id(text)
    text.to_slug.normalize(transliterations: :russian).to_s
  end
  
end
