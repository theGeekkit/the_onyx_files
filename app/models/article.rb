class Article < ApplicationRecord
  has_many :story_page, :media_page
end
