Parameters: {"utf8"=>"✓", "authenticity_token"=>"kiLTTeH8Mktp2Ds4SfhJS+HX4AteJWYgE/omUoaywm0I7oEtEGjkL/a8Ay8ltI9/9tLRS+h+MU4bH/6nzUIaqw==", "title"=>"Slap a dog", "deadline"=>"2018-11-30", "Category"=>"1", "commit"=>"Create task"}
  User Load (0.7ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = $1 ORDER BY "users"."id" ASC LIMIT $2  [["id", 1], ["LIMIT", 1]]
  ↳ /home/papuch/.rvm/gems/ruby-2.5.1/gems/activerecord-5.2.1/lib/active_record/log_subscriber.rb:98
Unpermitted parameters: :utf8, :authenticity_token, :Category, :commit
{"utf8"=>"✓", "authenticity_token"=>"kiLTTeH8Mktp2Ds4SfhJS+HX4AteJWYgE/omUoaywm0I7oEtEGjkL/a8Ay8ltI9/9tLRS+h+MU4bH/6nzUIaqw==", "title"=>"Slap a dog", "deadline"=>"2018-11-30", "Category"=>"1", "commit"=>"Create task", "controller"=>"tasks", "action"=>"create"}

Parameters: {"utf8"=>"✓", "authenticity_token"=>"ngnZmHzGRVerGwmBPSiBMcs3SeR0VxpNbCRrDcLxq1YExYv4jVKTMzR/MZZRZEcF3DJ4pMIMTSNkwbP4iQFzkA==",
   "task"=>{"title"=>"Slap a dog", "deadline"=>"2018-11-30", "Category"=>"3"}, "commit"=>"Create task"}
  User Load (0.8ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = $1 ORDER BY "users"."id" ASC LIMIT $2  [["id", 1], ["LIMIT", 1]]
  ↳ /home/papuch/.rvm/gems/ruby-2.5.1/gems/activerecord-5.2.1/lib/active_record/log_subscriber.rb:98
Unpermitted parameters: :utf8, :authenticity_token, :task, :commit
{"utf8"=>"✓", "authenticity_token"=>"ngnZmHzGRVerGwmBPSiBMcs3SeR0VxpNbCRrDcLxq1YExYv4jVKTMzR/MZZRZEcF3DJ4pMIMTSNkwbP4iQFzkA==", "task"=>{"title"=>"Slap a dog", "deadline"=>"2018-11-30", "Category"=>"3"}, "commit"=>"Create task", "controller"=>"tasks", "action"=>"create"}
