require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test 'get index' do
    get :index
    assert_response :success
    assert_template :index
  end

  test 'new book' do
    get :new
    assert_response :success
    assert_template :new
  end

  test 'create book' do
    params = {title: "harry potter", author: "JK Rowling", state: "en_biblioteca", holder: "NN", lend_date: "2020-08-15", returning_date: "2020-08-15"}
    post :create, params: {book: params}
    assert_response :found
  end

end
