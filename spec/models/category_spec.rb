require "rails_helper"

RSpec.describe Category, :type => :model do
  context "Add new category" do
    it "Check the instance of new object" do
      category = Category.new
      expect(category).to be_instance_of Category
    end

    it "Create category without attributes" do
      category = Category.new
      expect(category.save).to eq(false)
    end

    it "Create category without description" do
      category = Category.new(description: "Test description")
      expect(category.save).to eq(false)
    end

    it "Create category without name" do
      category = Category.new(name: "Test category")
      expect(category.save).to eq(false)
    end

    it "Create category with name and description" do
      category = Category.new(name: "Test category", description: "Test description")
      expect(category.save).to eq(true)
    end
  end

  context "Changing the attributes" do
    category = Category.create!(name: "Test category", description: "Test description")

    it "Change the name of the category" do
      name = "Name changed"
      category.update_attributes(name: name)
      expect(category.name).to eq(name)
    end

    it "Change the description of the category" do
      description = "Description changed"
      category.update_attributes(description: "Description changed")
      expect(category.description).to eq(description)
    end

  end
end
