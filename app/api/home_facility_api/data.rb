module Home_Facility_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :home_facility do
            desc "List all home_facility"
            get do
                HomeFacility.all
            end
            
            desc "create a new home_facility"
## This takes care of parameter validation
            params do
                requires :facility_id, type: Integer
                requires :home_id, type: Integer
            end
## This takes care of creating employee
            post do
                HomeFacility.create!({
                                         facility_id:params[:facility_id],
                                     home_id:params[:home_id]
                                 })
            end
            
            desc "delete an home_facility"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                HomeFacility.find(params[:id]).destroy!
            end
            
            desc "update an home_facility"
            params do
                requires :id, type: Integer
                requires :facility_id, type: Integer
                requires :home_id, type: Integer
            end
            put ':id' do
                HomeFacility.find(params[:id]).update({
                                                          facility_id:params[:facility_id],
                                                      home_id:params[:home_id]
                                                  })
            end
        
        end
    end
end