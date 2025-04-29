Rails.application.routes.draw do
  get("/", { :controller => "zebra",:action => "homepage" })
  get("/square/new", { :controller => "zebra",:action => "square_new" })
  get("/square_root/new", { :controller => "zebra",:action => "square_root_new" })
  get("/payment/new", { :controller => "zebra",:action => "payment_new" })
  get("/random/new", { :controller => "zebra",:action => "random_new" })
end
