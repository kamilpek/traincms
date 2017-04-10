# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or Created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.create!([
  {email: 'admin@pl', encrypted_password: '$2a$11$plDrpEk4ndTp9uhoP81/ie9JCvBBmeYbCCrXcxgs5eC15gseAY9QK', password: 'adminpl', reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 4, current_sign_in_at: "2017-02-11 11:30:23", last_sign_in_at: "2017-02-11 11:29:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, first_name: "Admin", last_name: "Admin", confirmation_token: nil, confirmed_at: "2017-02-21 18:20:54", confirmation_sent_at: nil},
  {email: 'redaktor@pl', encrypted_password: '$2a$11$plDrpEk4ndTp9uhoP81/ie9JCvBBmeYbCCrXcxgs5eC15gseAY9QK', password: 'redaktorpl', reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 4, current_sign_in_at: "2017-02-11 11:30:23", last_sign_in_at: "2017-02-11 11:29:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, first_name: "Redaktor", last_name: "Redaktor", confirmation_token: nil, confirmed_at: "2017-02-21 18:20:54", confirmation_sent_at: nil},
])
p "Created #{User.count} users."

Category.create!([
  {title: "Aktualności", desc: "Najnowsze wiadomości.", active: true},
])
p "Created #{Category.count} categories."

Component.create!([
  {title: "Najbliższe Wydarzenia", content: "coming_events", order: 2, active: true},
  {title: "Najnowsze Tagi", content: "newest_tags", order: 3, active: true},
  {title: "Drobne Statystyki", content: "simple_stats", order: 4, active: true},
  {title: "Popularne Artykuły", content: "popular_articles", order: 1, active: true},
])
p "Created #{Component.count} components."
