module Room_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :room do
            desc "List all room"
            get do
                Room.all
            end
            
            desc "create a new room"
## This takes care of parameter validation
            params do
                
            end
## This takes care of creating employee
            post do
                Room.create!({
                                     room_type_id:params[:room_type_id],
                                     bed_type_id:params[:bed_type_id],
                                     bath_type_id:params[:bath_type_id],
                                     accommodates:params[:accommodates],
                                     description:params[:description],
                                     image:params[:image],
                                     price:params[:price],
                                     room_name:params[:room_name]
                                 })
            end
            
            desc "delete an room"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                Room.find(params[:id]).destroy!
            end
            
            desc "update an room"
            params do
                requires :id, type: Integer
            end
            put ':id' do
                Room.find(params[:id]).update({
                                                      room_type_id:params[:room_type_id],
                                                      bed_type_id:params[:bed_type_id],
                                                      bath_type_id:params[:bath_type_id],
                                                      accommodates:params[:accommodates],
                                                      description:params[:description],
                                                      image:params[:image],
                                                      price:params[:price],
                                                      room_name:params[:room_name]
                                                  })
            end
        
        end
    end
end