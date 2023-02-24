require "test_helper"

class ConsultantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultant = consultants(:one)
  end

  test "should get index" do
    get consultants_url, as: :json
    assert_response :success
  end

  test "should create consultant" do
    assert_difference("Consultant.count") do
      post consultants_url, params: { consultant: { email: @consultant.email, image_url: @consultant.image_url, name: @consultant.name, phone: @consultant.phone } }, as: :json
    end

    assert_response :created
  end

  test "should show consultant" do
    get consultant_url(@consultant), as: :json
    assert_response :success
  end

  test "should update consultant" do
    patch consultant_url(@consultant), params: { consultant: { email: @consultant.email, image_url: @consultant.image_url, name: @consultant.name, phone: @consultant.phone } }, as: :json
    assert_response :success
  end

  test "should destroy consultant" do
    assert_difference("Consultant.count", -1) do
      delete consultant_url(@consultant), as: :json
    end

    assert_response :no_content
  end
end
