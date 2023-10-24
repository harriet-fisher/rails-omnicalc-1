Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  post("/square/results", {:controller => "calculator", :action => "square_results"})
  get("/square_root", {:controller => "calculator", :action => "square_root"})
  post("/square_root/results", {:controller => "calculator", :action => "square_root_results"})
  get("/payment", {:controller => "calculator", :action => "payment"})
  post("/payment/results", {:controller => "calculator", :action => "payment_results"})
  get("/random", {:controller => "calculator", :action => "random"})
  post("/random/results", {:controller => "calculator", :action => "random_results"})
end
