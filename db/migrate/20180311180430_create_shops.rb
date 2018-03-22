class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :owner_cd
      t.string :owner_nm
      t.string :yubin
      t.string :owner_addr1
      t.string :owner_addr2
      t.string :tel
      t.string :phone_no
      t.string :fax
      t.string :shop_memo
      t.string :main_img
      t.string :detail_img_1
      t.string :detail_img_2
      t.string :detail_img_3
      t.string :detail_img_4
      t.string :detail_text_1
      t.string :detail_text_2
      t.string :detail_text_3
      t.string :detail_text_4
      t.string :shop_b_hour
      t.string :shop_reg_hol
      t.string :geo
      t.string :ido
      t.string :keido

      t.timestamps null: false
    end
  end
end
