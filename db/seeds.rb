require 'csv'

CSV.foreach('db/product.csv', headers: true) do |row|
  Product.create(id: row['id'], title: row['title'], image_url: row['image_url'], author: row['author'], description: row['description'], genre_id: row['genre_id'], created_at: row['created_at'], updated_at: row['updated_at'])
end

# manga = Genre.create(:genre=>"漫画")

# syounen = manga.children.create(:genre=>"少年")
# seinen = manga.children.create(:genre=>"青年")
# syoujyo = manga.children.create(:genre=>"少女")

# syounen.children.create([{:genre=>"バトル・アクション"}, {:genre=>"スポーツ・格闘技"}, {:genre=>"SF・ファンタジー"}, {:genre=>"歴史・時代"}, {:genre=>"学園"}, {:genre=>"不良・ヤンキー"}, {:genre=>"車・バイク"}, {:genre=>"コメディ"}, {:genre=>"ミステリー・サスペンス"}, {:genre=>"恋愛"}, {:genre=>"ラブコメ"}, {:genre=>"人間ドラマ"}])
# seinen.children.create([{:genre=>"恋愛"}, {:genre=>"ラブコメ"}, {:genre=>"ミステリー・サスペンス"}, {:genre=>"極道・裏社会"}, {:genre=>"不良・ヤンキー"}, {:genre=>"バトル・アクション"}, {:genre=>"SF・ファンタジー"}, {:genre=>"スポーツ・格闘技"}, {:genre=>"人間ドラマ"}, {:genre=>"ホームドラマ"}, {:genre=>"学園"}, {:genre=>"コメディ"}, {:genre=>"歴史・時代"}, {:genre=>"ギャンブル"}, {:genre=>"車・バイク"}, {:genre=>"ハードボイルド"}])
# syoujyo.children.create([{:genre=>"恋愛"}, {:genre=>"ラブコメ"}, {:genre=>"SF・ファンタジー"}, {:genre=>"学園"}, {:genre=>"ホームドラマ"}, {:genre=>"歴史・時代"}, {:genre=>"ミステリー・サスペンス"}, {:genre=>"アクション"}, {:genre=>"コメディ"}, {:genre=>"シリアス"}, {:genre=>"人間ドラマ"}, {:genre=>"スポーツ"}])