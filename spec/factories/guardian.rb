FactoryGirl.define do
  factory :guardian do |g|
    g.first_name 'Fname'
    g.last_name  'Lname'
    g.relation   'Parent'
  end
end