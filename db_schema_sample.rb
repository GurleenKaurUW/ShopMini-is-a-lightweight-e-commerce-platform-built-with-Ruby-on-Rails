# db/schema_sample.rb (illustrative, not auto-generated)
create_table "products", force: :cascade do |t|
  t.string "name"
  t.integer "price_cents"
  t.integer "stock"
  t.text "description"
  t.string "image_url"
  t.timestamps
end

create_table "users", force: :cascade do |t|
  t.string "email"
  t.boolean "admin", default: false
  t.timestamps
end

create_table "cart_items", force: :cascade do |t|
  t.integer "user_id"
  t.integer "product_id"
  t.integer "quantity"
  t.timestamps
end

create_table "orders", force: :cascade do |t|
  t.integer "user_id"
  t.integer "total_cents"
  t.string  "status"
  t.timestamps
end

create_table "order_items", force: :cascade do |t|
  t.integer "order_id"
  t.integer "product_id"
  t.integer "quantity"
  t.integer "price_cents"
  t.timestamps
end
