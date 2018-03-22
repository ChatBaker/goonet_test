class CreateZaikos < ActiveRecord::Migration
  def change
    create_table :zaikos do |t|
      t.string :stock_id
      t.string :goocar_id
      t.string :owner_cd
      t.string :n_p_country_nm_n
      t.integer :n_country_cd
      t.string :brand_nm
      t.integer :n_maker_cd
      t.string :n_p_brand_nm_n
      t.integer :n_brand_cd
      t.string :n_p_car_nm_n
      t.integer :n_car_cd
      t.string :n_p_grade_nm_n

      t.timestamps null: false
    end
  end
end
