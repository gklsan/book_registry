puts " Seeding Started!!!!!!!!".rjust(50, "*")

if User.all.empty?
  puts " Seeding user".rjust(50, "*")
  (1..5).each do |i|
    User.create!(name: "User#{i}", email: "user#{i}@example.com", password: "test1234")
  end
end


if Category.all.empty?
  puts " Seeding category".rjust(50, "*")
  (1..5).each do |i|
    Category.create!(name: "Category#{i}", description: "This is the description for category #{i}")
  end
end


if Book.all.empty?
  puts " Seeding book".rjust(50, "*")
  (1..15).each do |i|
    Book.create!(name: "Book #{i}", isbn: "ISBN#{i * rand(500..5000)}", price: "#{rand(5000).to_f}", user: User.first, category: Category.first, publish_status: i.odd?)
  end
end


puts " Seeding Done!!!!!!!!".rjust(50, "*")
