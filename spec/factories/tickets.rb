FactoryBot.define do
  factory :ticket do
    name { "MyString" }
    description do
      "Rails, yet again, works out from the
    Array what route you wish to follow."
    end
    project { nil }
  end
end
