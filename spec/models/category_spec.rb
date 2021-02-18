require 'rails_helper'

RSpec.describe Category, type: :model do

  it "is valid without a parent" do
    category = Category.create(name: "Categoria 1")
    expect(category).to be_valid
  end

  it "destroy dependent categories children when destroys a parent category" do
    category_parent = Category.create(name: "Categoria padre")
    category_child = Category.create(name: "Categoria hijo", parent: category_parent)

    category_parent.destroy

    assert_nil Category.find_by_id(category_child.id)
  end
end
