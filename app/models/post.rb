class Post < ActiveRecord::Base

  scope :random, -> { order('RANDOM()') }

  def content
    super.html_safe
  end

end
