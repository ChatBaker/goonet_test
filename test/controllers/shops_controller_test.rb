require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { detail_img_1: @shop.detail_img_1, detail_img_2: @shop.detail_img_2, detail_img_3: @shop.detail_img_3, detail_img_4: @shop.detail_img_4, detail_text_1: @shop.detail_text_1, detail_text_2: @shop.detail_text_2, detail_text_3: @shop.detail_text_3, detail_text_4: @shop.detail_text_4, fax: @shop.fax, geo: @shop.geo, geo: @shop.geo, ido: @shop.ido, keido: @shop.keido, main_img: @shop.main_img, owner_addr1: @shop.owner_addr1, owner_addr2: @shop.owner_addr2, owner_cd: @shop.owner_cd, owner_nm: @shop.owner_nm, phone_no: @shop.phone_no, shop_b_hour: @shop.shop_b_hour, shop_memo: @shop.shop_memo, shop_reg_hol: @shop.shop_reg_hol, tel: @shop.tel, yubin: @shop.yubin }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { detail_img_1: @shop.detail_img_1, detail_img_2: @shop.detail_img_2, detail_img_3: @shop.detail_img_3, detail_img_4: @shop.detail_img_4, detail_text_1: @shop.detail_text_1, detail_text_2: @shop.detail_text_2, detail_text_3: @shop.detail_text_3, detail_text_4: @shop.detail_text_4, fax: @shop.fax, geo: @shop.geo, geo: @shop.geo, ido: @shop.ido, keido: @shop.keido, main_img: @shop.main_img, owner_addr1: @shop.owner_addr1, owner_addr2: @shop.owner_addr2, owner_cd: @shop.owner_cd, owner_nm: @shop.owner_nm, phone_no: @shop.phone_no, shop_b_hour: @shop.shop_b_hour, shop_memo: @shop.shop_memo, shop_reg_hol: @shop.shop_reg_hol, tel: @shop.tel, yubin: @shop.yubin }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
