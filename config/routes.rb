ChronicleNotes::Application.routes.draw do
 
  root :to => "chronicle_notes#index"
  resources :chronicle_notes

 
end
