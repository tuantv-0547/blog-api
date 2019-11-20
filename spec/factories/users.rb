# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    phone_number { Faker::PhoneNumber.cell_phone }
    gender { Faker::Gender.binary_type }
    avatar { Faker::Avatar.image }
  end
end
