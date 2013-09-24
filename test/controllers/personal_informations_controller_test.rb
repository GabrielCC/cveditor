require 'test_helper'

class PersonalInformationsControllerTest < ActionController::TestCase
  setup do
    @personal_information = personal_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_information" do
    assert_difference('PersonalInformation.count') do
      post :create, personal_information: { date_of_birth: @personal_information.date_of_birth, email: @personal_information.email, first_name: @personal_information.first_name, last_name: @personal_information.last_name, nationality: @personal_information.nationality, sex: @personal_information.sex, user_id: @personal_information.user_id }
    end

    assert_redirected_to personal_information_path(assigns(:personal_information))
  end

  test "should show personal_information" do
    get :show, id: @personal_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_information
    assert_response :success
  end

  test "should update personal_information" do
    patch :update, id: @personal_information, personal_information: { date_of_birth: @personal_information.date_of_birth, email: @personal_information.email, first_name: @personal_information.first_name, last_name: @personal_information.last_name, nationality: @personal_information.nationality, sex: @personal_information.sex, user_id: @personal_information.user_id }
    assert_redirected_to personal_information_path(assigns(:personal_information))
  end

  test "should destroy personal_information" do
    assert_difference('PersonalInformation.count', -1) do
      delete :destroy, id: @personal_information
    end

    assert_redirected_to personal_informations_path
  end
end
