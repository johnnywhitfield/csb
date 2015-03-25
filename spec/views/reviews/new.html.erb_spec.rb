require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :company => nil,
      :user => nil,
      :words => "MyText",
      :overall => 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_company_id[name=?]", "review[company_id]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "textarea#review_words[name=?]", "review[words]"

      assert_select "input#review_overall[name=?]", "review[overall]"
    end
  end
end
