ClosetXY::Application.routes.draw do

  scope :api do
    resources :users, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'users#index', on: :collection 
       
      resources :closet_items, except: [ :show, :new, :edit ],
        defaults: { format: :json } do
        get ':id' => 'closet_items#index', on: :collection
      end
    end
  end

  scope :api do
    resources :looks, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'looks#index', on: :collection 

      resources :comments, except: [ :show, :new, :edit ],
        defaults: { format: :json } do
        get ':id' => 'comments#index', on: :collection
      end
       
    end
  end
  
  scope :api do
    resources :clothing_items, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'clothing_items#index', on: :collection 
       
    end
  end

  scope :api do
    resources :new_items, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'new_items#index', on: :collection 
       
    end
  end
  

  scope :api do
    resources :creators, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'creators#index', on: :collection 
       
      resources :looks, except: [ :show, :new, :edit ],
        defaults: { format: :json } do
        get ':id' => 'looks#index', on: :collection
      end
    end
  end

  
  
  root 'site#index'#, defaults: { format: :json }
end
