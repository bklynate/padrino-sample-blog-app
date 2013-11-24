FactoryGirl.define do
  factory :account do
    name 'Foo'
    surname 'Bar'
    sequence(:email) {|n| "foo#{n}@bar.baz"}
    role 'admin'
    password 'password'
    password_confirmation 'password'
  end

  factory :post do
    account
    sequence(:title) {|n| "Title #{n}"}
    sequence(:body) {|n| "Body #{n}"}
  end
end
