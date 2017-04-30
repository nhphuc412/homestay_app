module Facility_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :facility do
            desc "List all Facility"
            get do
                Facility.all
            end
            
            desc "create a new Facility"
## This takes care of parameter validation
            params do
                requires :facility_name, type: String
            end
## This takes care of creating employee
            post do
                Facility.create!({
                                     facility_name:params[:facility_name],
                                     description:params[:description]
                              })
            end
            
            desc "delete an Facility"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                Facility.find(params[:id]).destroy!
            end
            
            desc "update an Facility"
            params do
                requires :id, type: Integer
                requires :facility_name, type: String
            end
            put ':id' do
                Facility.find(params[:id]).update({
                                                      facility_name:params[:facility_name],
                                                      description:params[:description]
                                               })
            end
        
        end
    end
end