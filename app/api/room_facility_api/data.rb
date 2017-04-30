module Room_Facility_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :room_facility do
            desc "List all room_facility"
            get do
                RoomFacility.all
            end
            
            desc "create a new room_facility"
## This takes care of parameter validation
            params do
                requires :facility_id, type: Integer
                requires :room_id, type: Integer
            end
## This takes care of creating employee
            post do
                RoomFacility.create!({
                                         facility_id:params[:facility_id],
                                         room_id:params[:room_id]
                                     })
            end
            
            desc "delete an room_facility"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                RoomFacility.find(params[:id]).destroy!
            end
            
            desc "update an room_facility"
            params do
                requires :id, type: Integer
                requires :facility_id, type: Integer
                requires :room_id, type: Integer
            end
            put ':id' do
                RoomFacility.find(params[:id]).update({
                                                          facility_id:params[:facility_id],
                                                          room_id:params[:room_id]
                                                      })
            end
        
        end
    end
end