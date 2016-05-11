User.create!([
  {email: "user2@test.com", encrypted_password: "$2a$11$VRbvu.cGmPXwqMNuoIpR9.AHVW/OdaOuWqu78wp8AmyYVQ43cvV/O", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-03 16:49:05", last_sign_in_at: "2016-05-03 03:03:04", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil},
  {email: "admin@test.com", encrypted_password: "$2a$11$wngycCDRMT10uK0K/c1ps.YzamtxmwamqCwshZz1xqbU8RmrUExZe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-05-08 17:20:45", last_sign_in_at: "2016-05-05 02:39:48", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true},
  {email: "user@test.com", encrypted_password: "$2a$11$i9PDVIOq9/qoxLrsdONPOO/NBQtnoj0PKcVSLZIKrbaKaxOgk8G3u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 19, current_sign_in_at: "2016-05-09 00:56:01", last_sign_in_at: "2016-05-05 04:01:00", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil}
])
CartedProduct.create!([
  {product_id: 15, order_id: 30, quantity: 3},
  {product_id: 4, order_id: 31, quantity: 2},
  {product_id: 3, order_id: 31, quantity: 1},
  {product_id: 14, order_id: 32, quantity: 2},
  {product_id: 13, order_id: 33, quantity: 1},
  {product_id: 15, order_id: 34, quantity: 2},
  {product_id: 14, order_id: 35, quantity: 1},
  {product_id: 3, order_id: 36, quantity: 2},
  {product_id: 3, order_id: 37, quantity: 1},
  {product_id: 4, order_id: 38, quantity: 1},
  {product_id: 15, order_id: 38, quantity: 2},
  {product_id: 3, order_id: 39, quantity: 2},
  {product_id: 15, order_id: 39, quantity: 2},
  {product_id: 12, order_id: 42, quantity: 1},
  {product_id: 12, order_id: 43, quantity: 2},
  {product_id: 12, order_id: 43, quantity: 3},
  {product_id: 14, order_id: 44, quantity: 1},
  {product_id: 14, order_id: 50, quantity: 1},
  {product_id: 3, order_id: 51, quantity: 1},
  {product_id: 15, order_id: 51, quantity: 1},
  {product_id: 3, order_id: 51, quantity: 2},
  {product_id: 14, order_id: 52, quantity: 1}
])
CategorizedProduct.create!([
  {product_id: 3, category_id: 1},
  {product_id: 12, category_id: 1},
  {product_id: 14, category_id: 1},
  {product_id: 15, category_id: 1},
  {product_id: 1, category_id: 2},
  {product_id: 13, category_id: 2},
  {product_id: 13, category_id: 1}
])
Category.create!([
  {name: "Office supplies"},
  {name: "Sports equipment"}
])
Image.create!([
  {link: "http://www.paperchase-usa.com/media/catalog/product/cache/4/image/956x956/9df78eab33525d08d6e5fb8d27136e95/00363720.JPG", product_id: 12},
  {link: "http://a.dilcdn.com/bl/wp-content/uploads/sites/6/2015/11/Original-1.jpg", product_id: 4},
  {link: "http://www.staples-3p.com/s7/is/image/Staples/s0313728_sc7?$splssku$", product_id: 3},
  {link: "http://cdn.successories.com/products/81/815922/zoom_double_741220.jpg", product_id: 14},
  {link: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Colored-Pencils.jpg", product_id: 15},
  {link: "https://robdogsblog.files.wordpress.com/2014/02/water-bottle-better.jpg", product_id: 13},
  {link: "http://www.mantis-sport.com/images/stories/shop/product/TSR350_racket25.png", product_id: 1},
  {link: "http://ghk.h-cdn.co/assets/cm/15/11/54fe9b48cea58-water-bottle-s3.jpg", product_id: 13},
  {link: "https://cdn.shopify.com/s/files/1/0281/7544/products/water-bottle-agua-water-bottle-blue-1_large.jpeg?v=1456872070", product_id: 13},
  {link: "http://d111vui60acwyt.cloudfront.net/product_photos/3169638/Profile(1)_original.jpg", product_id: 16},
  {link: "http://www.paperchase-usa.com/media/catalog/product/cache/4/image/956x956/9df78eab33525d08d6e5fb8d27136e95/00094979.JPG", product_id: 17},
  {link: "https://upload.wikimedia.org/wikipedia/commons/0/01/Gorra_MLB.JPG", product_id: 21}
])
Order.create!([
  {user_id: 1, subtotal: "10.0", tax: "0.9", total: "10.9", completed: true},
  {user_id: 1, subtotal: "96.0", tax: "8.64", total: "104.64", completed: true},
  {user_id: 1, subtotal: "26.0", tax: "2.34", total: "28.34", completed: true},
  {user_id: 1, subtotal: "1.0", tax: "0.09", total: "1.09", completed: true},
  {user_id: 1, subtotal: "5.0", tax: "0.45", total: "5.45", completed: true},
  {user_id: 1, subtotal: "1.12", tax: "0.1", total: "1.22", completed: true},
  {user_id: 1, subtotal: "80.0", tax: "7.2", total: "87.2", completed: true},
  {user_id: 1, subtotal: "1.12", tax: "0.1", total: "1.22", completed: true},
  {user_id: 1, subtotal: "23.0", tax: "2.07", total: "25.07", completed: true},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 2, subtotal: "24.0", tax: "2.16", total: "26.16", completed: true},
  {user_id: 2, subtotal: "165.0", tax: "14.85", total: "179.85", completed: true},
  {user_id: 2, subtotal: "2.24", tax: "0.2", total: "2.44", completed: true},
  {user_id: 1, subtotal: "20.0", tax: "1.8", total: "21.8", completed: true},
  {user_id: 1, subtotal: "16.0", tax: "1.44", total: "17.44", completed: true},
  {user_id: 1, subtotal: "1.12", tax: "0.1", total: "1.22", completed: true},
  {user_id: 2, subtotal: "5.0", tax: "0.45", total: "5.45", completed: true}
])
Product.create!([
  {name: "Star Wars OT", price: "80.0", description: "VHS version of the Star Wars trilogy", in_stock: false, supplier_id: 1},
  {name: "Binder", price: "5.0", description: "Three ring binder", in_stock: true, supplier_id: 1},
  {name: "Pen", price: "1.12", description: "A normal ballpoint pen", in_stock: false, supplier_id: 1},
  {name: "Pencil", price: "8.0", description: "Set of 20 colored pencils", in_stock: true, supplier_id: 1},
  {name: "Water bottle", price: "20.0", description: "fancy bottle", in_stock: true, supplier_id: 2},
  {name: "Cup", price: "7.0", description: "Plain blue cup", in_stock: true, supplier_id: 1},
  {name: "Tennis Racket", price: "50.0", description: "A racket for the sport of tennis", in_stock: true, supplier_id: 2},
  {name: "Notebook", price: "1.0", description: "Paper notebook", in_stock: false, supplier_id: 1},
  {name: "Baseball Cap", price: "20.0", description: "Anti-sunlight headgear", in_stock: true, supplier_id: 2}
])
Supplier.create!([
  {name: "BIC", email: "Bic_sales@bic.com", phone: "415-222-5984"},
  {name: "REI", email: "Rei_sports@REI.com", phone: "415-234-1849"}
])
