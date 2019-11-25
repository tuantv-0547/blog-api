# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    user_name { Faker::Name.name }
    password { Faker::Internet.password }
  end
end
