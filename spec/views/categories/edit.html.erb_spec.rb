require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :review => nil,
      :company => nil,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_review_id[name=?]", "category[review_id]"

      assert_select "input#category_company_id[name=?]", "category[company_id]"

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_description[name=?]", "category[description]"
    end
  end
end
