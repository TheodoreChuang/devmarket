# !!! Seed must be create in order due to relationships
# User, Product, Offer, Rating

20.times do |i|
  User.create(
    user_type: "client",
    email: "clientfull#{i}@mail.com",
    password: "password",
    name: "Client Full Profile",
    company_name: "Need Help Inc.",
    phone_number: 212345678,
    bio: "need lots of help, find me a dev",
    city: "Sydney",
  )
end

1.times do |i|
  User.create(
    user_type: "client",
    email: "clientpart#{i}@mail.com",
    password: "password",
  )
end

1.times do |i|
  User.create(
    user_type: "dev",
    email: "devpart#{i}@mail.com",
    password: "password",
  )
  User.create(
    user_type: "dev",
    email: "devfull#{i}@mail.com",
    password: "password",
    name: "Dev Full Profile",
    company_name: "Dev for You Inc.",
    phone_number: 287654321,
    bio: "ninja dev, skilled in all tech",
    city: "Sydney",
  )
end

3.times do |i|
  Product.create(
    option: "option #{1}",
    price: rand(1000),
    duration: rand(30),
  )
end

20.times do |x|
  Project.create(
    description: Faker::Food.dish,
    title: "test",
    overview: "test",
    user_id: x
  )
end



