class Page < ApplicationRecord
  validates :url, presence: true

  before_create :set_content

  def set_content
    self.content ||= Parser.new(self.url).call
  end
end
