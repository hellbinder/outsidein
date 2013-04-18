FactoryGirl.define do
  factory :library do
    name Faker::Company.name
    built_date Random.new.rand(1600..2000)
  end

  factory :book do
    name Faker::Company.bs
  end
end
