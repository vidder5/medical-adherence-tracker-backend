require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { address: @patient.address, age: @patient.age, contact_no: @patient.contact_no, name: @patient.name, photo: @patient.photo, sex: @patient.sex } }, as: :json
    end

    assert_response :created
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address: @patient.address, age: @patient.age, contact_no: @patient.contact_no, name: @patient.name, photo: @patient.photo, sex: @patient.sex } }, as: :json
    assert_response :success
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response :no_content
  end
end
