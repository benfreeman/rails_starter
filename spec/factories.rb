FactoryGirl.define do
  factory :user do
    full_name             "BOB JONES"
    email                 "bob_jones@bobjones.com"
    password              "someshit10"
    password_confirmation "someshit10"
  end
end
