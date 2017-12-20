require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
    def setup
    @pin = users(:michael)
  end

  test "unsuccessful edit" do
    get edit_user_path(@pin)
    assert_template 'users/edit'
    patch user_path(@pin), params: { user: { name:  "",
                                              email: "carlos@gmail.com",
                                              password:              "carlos",
                                              password_confirmation: "carlos" } }

    assert_template 'users/edit'
end
