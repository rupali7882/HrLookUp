Employee.delete_all

10.times do
  Employee.create!([{
    title: Faker::Name.prefix,
    empid: Faker::Base.numerify('####'),
    firstname: Faker::Name.first_name ,
    midname: Faker::Name.last_name,
    lastname: Faker::Name.last_name,
    bloodtype: "B+",
    nationality: Faker::Address.country,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    pin: Faker::Address.postcode,
    homenumber: Faker::Base.numerify('#########'),
    mobile: Faker::Base.numerify('#########'),
    email: Faker::Internet.email,
    joined_at: Faker::Date.between(1.year.ago, Date.today),
    birth_date:Faker::Date.birthday,
    gender: "male",
    marital: "single"
    }])
end
