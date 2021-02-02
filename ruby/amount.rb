amounts = {"リンゴ"=>2, "イチゴ"=>5, "オレンジ"=>3, "キウイ"=>3}
amounts.each do |fruit, amount|
  puts "ここの商品は" + fruit + "です。在庫数は" + "#{amount}個です。"
end