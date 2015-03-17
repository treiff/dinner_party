FactoryGirl.define do
  factory :dinner do |f|
    f.name { "My dinner" }
    f.date { Time.now + (7*24*60*60) }
    f.time { Time.now + 3600 }
    f.location { "My backyard" }
    f.email { "valid@example.com" }
  end
end
