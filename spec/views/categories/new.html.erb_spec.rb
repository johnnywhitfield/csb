require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :review => nil,
      :company => nil,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_review_id[name=?]", "category[review_id]"

      assert_select "input#category_company_id[name=?]", "category[company_id]"

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_description[name=?]", "category[description]"
    end
  end
end
