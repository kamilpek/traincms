# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usr = User.create([
  {email: "user4@pl", encrypted_password: "$2a$11$plDrpEk4ndTp9uhoP81/ie9JCvBBmeYbCCrXcxgs5eC15gseAY9QK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2017-02-11 11:30:23", last_sign_in_at: "2017-02-11 11:29:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, first_name: "Kamil", last_name: "Pek", confirmation_token: nil, confirmed_at: "2017-02-21 18:20:54", confirmation_sent_at: nil},
  {email: "kamil.pek@gmail.com", encrypted_password: "$2a$11$lK.Bey6/JhgTySho/knGQuCG2yTNo4dlAwEryLrZHA5jKgAKeOoE2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 41, current_sign_in_at: "2017-02-25 07:25:09", last_sign_in_at: "2017-02-23 16:24:26", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, first_name: nil, last_name: nil, confirmation_token: nil, confirmed_at: "2017-02-21 18:20:54", confirmation_sent_at: nil}
])
cat = Category.create([
  {title: "Aktualności", desc: "Najnowsze wiadomości.", active: true},
  {title: "Wagony", desc: "Wagony pociągów kolejowych.", active: true}
])
art = Article.create([
  {title: "Wpis szósty", category_id: 1, active: true, intro: "Pociąg szósty.", content: "en57-093", visit: 10, highlight: false, user_id: 1, image: "en57-093.JPG"},
  {title: "Wpis piąty", category_id: 1, active: true, intro: "piąty test", content: "test", visit: 6, highlight: false, user_id: 1, image: "st44-1246.jpg"},
  {title: "Trzeci wpis", category_id: 1, active: true, intro: "Wstęp trzeci.", content: "Trzecie rozwinięcie.", visit: 1, highlight: false, user_id: 1, image: "st44.jpg"},
  {title: "Czwarty wpis", category_id: 1, active: true, intro: "Czwarty wstęp.", content: "Czwarte rozwinięcie.", visit: 1, highlight: false, user_id: 1, image: "ST44-1041.jpg"},
  {title: "ED-161", category_id: 1, active: true, intro: "<p>Pesa Dart</p>\r\n", content: "<p>Pesa Dart</p>\r\n", visit: 15, highlight: false, user_id: 1, image: "pesdart.jpg"},
  {title: "Siódmy wpis", category_id: 1, active: true, intro: "Pociąg siódmy", content: "en57-792", visit: 64, highlight: false, user_id: 1, image: "en57-792.jpg"},
  {title: "Trzeci wpis", category_id: 1, active: true, intro: "Wstęp trzeci.", content: "Trzecie rozwinięcie.", visit: 1, highlight: true, user_id: 1, image: "strr-008.jpg"},
  {title: "35WE", category_id: 1, active: true, intro: "<h5>createag Impuls</h5>\r\n", content: "<p>35WE-001F</p>\r\n", visit: 154, highlight: false, user_id: 6, image: "createagimpuls.JPG"},
  {title: "Trzeci wpis", category_id: 1, active: true, intro: "Wstęp trzeci.", content: "Trzecie rozwinięcie.", visit: 10, highlight: true, user_id: 1, image: "st44-1103.jpg"}
])
com = Comment.create([
  {article_id: 9, author: "majster", content: "super artykuł", email: nil, ip: "127.0.0.1"},
  {article_id: 11, author: "Zwiedzający", content: "Mocne 9/11", email: nil, ip: "127.0.0.1"}
])
eve = Event.create([
  {title: "Przejażdżka Elf 2", content: "<h4>Pesa Elf 2 - przejażdżka.</h4>\r\n", active: true, highlight: false, visit: nil, followers: nil, term: "2017-02-26", user_id: 1, image: "elf2.jpg"},
  {title: "Podróż createag 222M", content: "<p>Przejażdżka createag 222M</p>\r\n", active: true, highlight: false, visit: nil, followers: nil, term: "2017-02-27", user_id: 1, image: "createag-222m.jpg"}
])
tag = Tag.create([
  {title: "Pociąg", active: false},
  {title: "EZT", active: true},
  {title: "Lokomotywa", active: true},
  {title: "createag", active: true},
  {title: "Impuls", active: true},
  {title: "Gagarin", active: true},
  {title: "Lokomotywa Spalinowa", active: true},
  {title: "Lokomotywa Elektryczna", active: true}
])
tgr = TagRef.create([
  {tag_id: 1, article_id: 11},
  {tag_id: 10, article_id: 11},
  {tag_id: 6, article_id: 11}
])
