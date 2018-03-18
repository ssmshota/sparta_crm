Faker::Config.locale = :ja
3.times do |index|
  Company.create(
    name: Faker::Company.name,
    url: "http://www.test#{index}.co.jp/",
    address: Faker::Address.city + "12-23#{index}"
  )
end
Post.create(position_name: "社長")
Post.create(position_name: "部長")
Post.create(position_name: "課長")
Post.create(position_name: "平社員")


100.times do |index|
  Customer.create(
    family_name: Faker::Name.last_name,
    given_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    company_id: rand(3) + 1,
    post_id: rand(1..4)
  )
end
User.create(family_name: "八幡平", given_name: "太郎", email: "hachiman@taro.com", password: "hachimantaro")
User.create(family_name: "安比", given_name: "花子", email: "appi@hanako.com", password: "appihanako")
User.create(family_name: "岩手", given_name: "次郎", email: "iwate@jiro.com", password: "iwatejiro")

300.times do |comment|
  Comment.create(body: "#{comment}回目のコメントです。",
                 customer_id: rand(100) + 1,
                 user_id: rand(3) + 1)
end
