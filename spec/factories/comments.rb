# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.character }
    association :article
    association :user
  end
end
