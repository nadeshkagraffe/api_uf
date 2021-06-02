Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            get 'by_date/:date', to:'ufs#by_date'
            get 'client/:name', to: 'ufs#visit_count'
        end
    end
end
