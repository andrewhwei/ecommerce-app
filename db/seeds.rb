Image.create!([
  {link: "http://www.paperchase-usa.com/media/catalog/product/cache/4/image/956x956/9df78eab33525d08d6e5fb8d27136e95/00363720.JPG", product_id: 12},
  {link: "http://a.dilcdn.com/bl/wp-content/uploads/sites/6/2015/11/Original-1.jpg", product_id: 4},
  {link: "http://www.staples-3p.com/s7/is/image/Staples/s0313728_sc7?$splssku$", product_id: 3},
  {link: "http://cdn.successories.com/products/81/815922/zoom_double_741220.jpg", product_id: 14},
  {link: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Colored-Pencils.jpg", product_id: 15},
  {link: "https://robdogsblog.files.wordpress.com/2014/02/water-bottle-better.jpg", product_id: 13},
  {link: "http://www.mantis-sport.com/images/stories/shop/product/TSR350_racket25.png", product_id: 1},
  {link: "http://ghk.h-cdn.co/assets/cm/15/11/54fe9b48cea58-water-bottle-s3.jpg", product_id: 13},
  {link: "https://cdn.shopify.com/s/files/1/0281/7544/products/water-bottle-agua-water-bottle-blue-1_large.jpeg?v=1456872070", product_id: 13}
])
Product.create!([
  {name: "Notebook", price: "1.0", description: "Paper notebook", in_stock: nil, supplier_id: 1},
  {name: "Star Wars OT", price: "80.0", description: "VHS version of the Star Wars trilogy", in_stock: false, supplier_id: 1},
  {name: "Binder", price: "5.0", description: "Three ring binder", in_stock: true, supplier_id: 1},
  {name: "Pen", price: "1.12", description: "A normal ballpoint pen", in_stock: false, supplier_id: 1},
  {name: "Pencil", price: "8.0", description: "Set of 20 colored pencils", in_stock: true, supplier_id: 1},
  {name: "Water bottle", price: "20.0", description: "fancy bottle", in_stock: true, supplier_id: 2},
  {name: "Tennis racket", price: "50.0", description: "A racket for the sport of tennis", in_stock: true, supplier_id: 2}
])
Supplier.create!([
  {name: "BIC", email: "Bic_sales@bic.com", phone: "415-222-5984"},
  {name: "REI", email: "Rei_sports@REI.com", phone: "415-234-1849"}
])
