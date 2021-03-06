require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :password_hash => "MyString",
      :password_salt => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_password_hash[name=?]", "user[password_hash]"

      assert_select "input#user_password_salt[name=?]", "user[password_salt]"

      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
