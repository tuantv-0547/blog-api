# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Name.name }
    content { Faker::Lorem.paragraph }
    association :user
    association :category
  end
end
