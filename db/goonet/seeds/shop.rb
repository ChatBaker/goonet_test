require "csv"
CSV.foreach('db/goonet/shop.csv') do |row|
  Goonet::Shop.create(
    owner_cd: row[0],
    owner_nm: row[1],
    yubin: row[2],
    owner_addr1: row[3],
    owner_addr2: row[4],
    tel: row[5],
    phone_no: row[6],
    fax: row[7],
    shop_memo: row[8],
    main_img: row[9],
    detail_img_1: row[10],
    detail_img_2: row[11],
    detail_img_3: row[12],
    detail_img_4: row[13],
    detail_text_1: row[14],
    detail_text_2: row[15],
    detail_text_3: row[16],
    detail_text_4: row[17],
    shop_b_hour: row[18],
    shop_reg_hol: row[19],
    geo: row[20],
    ido: row[21],
    keido: row[22])
end
