FactoryGirl.define do
  factory :user do
    sequence(:full_name)  { |n| "Puppy #{n}" }
    sequence(:email) { |n| "puppy_#{n}@puppypants.org"}
    password              "someshit10"
    password_confirmation "someshit10"
  end
end
