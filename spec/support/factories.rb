FactoryGirl.define do
  factory :post do
    sequence(:title) {|n| "Title #{n}"}
    sequence(:body) {|n| "Body #{n}"}
  end
end
