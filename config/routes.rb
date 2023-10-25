Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  get("/square/new", {:controller => "calculator", :action => "home"})
  post("/square/results", {:controller => "calculator", :action => "square_results"})
  get("/square_root/new", {:controller => "calculator", :action => "square_root"})
  post("/square_root/results", {:controller => "calculator", :action => "square_root_results"})
  get("/payment/new", {:controller => "calculator", :action => "payment"})
  post("/payment/results", {:controller => "calculator", :action => "payment_results"})
  get("/random/new", {:controller => "calculator", :action => "random"})
  post("/random/results", {:controller => "calculator", :action => "random_results"})
end
