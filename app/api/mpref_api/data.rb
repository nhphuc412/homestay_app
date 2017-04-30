module Mpref_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :mpref do
            desc "List all Mpref"
            get do
                MPref.all
            end
            
            desc "create a new Mpref"
## This takes care of parameter validation
            params do
                requires :pref_name, type: String
            end
## This takes care of creating employee
            post do
                MPref.create!({
                                  pref_name:params[:pref_name]
                             })
            end
            
            desc "delete an Mpref"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                MPref.find(params[:id]).destroy!
            end
            
            desc "update an Mpref"
            params do
                requires :id, type: Integer
                requires :pref_name, type: String
            end
            put ':id' do
                MPref.find(params[:id]).update({
                                                   pref_name:params[:pref_name]
                                              })
            end
        
        end
    end
end