require "rails_helper"
BOOK_HASH = {name: "Book100", isbn: "ISBN100", price: 100, user: User.first, category: Category.first, publish_status: true}

RSpec.describe Book, :type => :model do
  context "Create new book" do
    it "Check the instance of new object" do
      book = Book.new
      expect(book).to be_instance_of Book
    end

    it "create book without attributes" do
      book = Book.new
      expect(book.save).to eq(false)
    end

    BOOK_HASH.except(:publish_status).each do |k, v|
      it "create book without #{k.to_s}" do
        data = BOOK_HASH.except(k)
        book = Book.new(data)
        expect(book.save).to eq(false)
      end
    end

    it "create book without publish status" do
      data = BOOK_HASH.except(:publish_status)
      book = Book.new(data)
      expect(book.save).to eq(true)
    end

    it "create book price column as string" do
      res = BOOK_HASH
      res[:price] = "string"
      book = Book.create!(res)
      expect(book.price).to eq(0)
    end
  end

  context "Changing the attributes" do
    book = Book.create!(BOOK_HASH)
    it "Change the author of the book" do
      user = User.last
      book.update_attributes(user: user)
      expect(book.user_id).to eq(user.id)
    end

    it "Change the category of the book" do
      category = Category.last
      book.update_attributes(category: category)
      expect(book.category_id).to eq(category.id)
    end

    it "Change the ibsn of the book" do
      isbn = "INBNchanged"
      book.update_attributes(isbn: isbn)
      expect(book.isbn.to_s).to eq(isbn.to_s)
    end

    it "Change the price of the book" do
      price = 1033
      book.update_attributes(price: price)
      expect(book.price).to eq(price)
    end

    it "Change the publish status of the book" do
      status = true
      book.update_attributes(publish_status: status)
      expect(book.publish_status).to eq(true)
    end

  end
end
