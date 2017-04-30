module Room_Type_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :roomtype do
            desc "List all room type"
            get do
                RoomType.all
            end
            
            desc "create a new room type"
## This takes care of parameter validation
            params do
                requires :room_type_name, type: String
            end
## This takes care of creating employee
            post do
                RoomType.create!({
                                     room_type_name:params[:room_type_name]
                                 })
            end
            
            desc "delete an room type"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                RoomType.find(params[:id]).destroy!
            end
            
            desc "update an room"
            params do
                requires :id, type: Integer
                requires :room_type_name, type:String
            end
            put ':id' do
                RoomType.find(params[:id]).update({
                                                      room_type_name:params[:room_type_name]
                                                  })
            end
        
        end
    end
end