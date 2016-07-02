FactoryGirl.define do
  factory :user do
    sequence :login_id do |n|
      "login_id#{n}"
    end
    sequence :nickname do |n|
      "nickname#{n}"
    end
  end
end
