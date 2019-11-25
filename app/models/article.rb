# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
end
