require 'test_helper'

class ZaikosControllerTest < ActionController::TestCase
  setup do
    @zaiko = zaikos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zaikos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zaiko" do
    assert_difference('Zaiko.count') do
      post :create, zaiko: { brand_nm: @zaiko.brand_nm, goocar_id: @zaiko.goocar_id, n_brand_cd: @zaiko.n_brand_cd, n_car_cd: @zaiko.n_car_cd, n_country_cd: @zaiko.n_country_cd, n_maker_cd: @zaiko.n_maker_cd, n_p_brand_nm_n: @zaiko.n_p_brand_nm_n, n_p_car_nm_n: @zaiko.n_p_car_nm_n, n_p_country_nm_n: @zaiko.n_p_country_nm_n, n_p_grade_nm_n: @zaiko.n_p_grade_nm_n, owner_cd: @zaiko.owner_cd, stock_id: @zaiko.stock_id }
    end

    assert_redirected_to zaiko_path(assigns(:zaiko))
  end

  test "should show zaiko" do
    get :show, id: @zaiko
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zaiko
    assert_response :success
  end

  test "should update zaiko" do
    patch :update, id: @zaiko, zaiko: { brand_nm: @zaiko.brand_nm, goocar_id: @zaiko.goocar_id, n_brand_cd: @zaiko.n_brand_cd, n_car_cd: @zaiko.n_car_cd, n_country_cd: @zaiko.n_country_cd, n_maker_cd: @zaiko.n_maker_cd, n_p_brand_nm_n: @zaiko.n_p_brand_nm_n, n_p_car_nm_n: @zaiko.n_p_car_nm_n, n_p_country_nm_n: @zaiko.n_p_country_nm_n, n_p_grade_nm_n: @zaiko.n_p_grade_nm_n, owner_cd: @zaiko.owner_cd, stock_id: @zaiko.stock_id }
    assert_redirected_to zaiko_path(assigns(:zaiko))
  end

  test "should destroy zaiko" do
    assert_difference('Zaiko.count', -1) do
      delete :destroy, id: @zaiko
    end

    assert_redirected_to zaikos_path
  end
end
