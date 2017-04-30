module Mcity_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :mcity do
            desc "List all Mcity"
            get do
                MCity.all
            end
            
            desc "create a new Mcity"
## This takes care of parameter validation
            params do
                requires :pref_id, type: Integer
                requires :city_name, type: String
            end
## This takes care of creating employee
            post do
                MCity.create!({
                                  pref_id:params[:pref_id],
                                  city_name:params[:city_name]
                              })
            end
            
            desc "delete an Mcity"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                MCity.find(params[:id]).destroy!
            end
            
            desc "update an Mcity"
            params do
                requires :id, type: Integer
                requires :pref_id, type: Integer
                requires :city_name, type: String
            end
            put ':id' do
                MCity.find(params[:id]).update({
                                                   pref_id:params[:pref_id],
                                                   city_name:params[:city_name]
                                               })
            end
        
        end
    end
end