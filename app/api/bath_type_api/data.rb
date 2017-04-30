module Bath_Type_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :bathtype do
            desc "List all Bath type"
            get do
                BathType.all
            end
            
            desc "create a new Bath type"
## This takes care of parameter validation
            params do
                requires :bath_type_names, type: String
            end
## This takes care of creating employee
            post do
                BathType.create!({
                                    bath_type_name:params[:bath_type_name]
                                })
            end
            
            desc "delete an Bath type"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                BathType.find(params[:id]).destroy!
            end
            
            desc "update an Bath"
            params do
                requires :id, type: Integer
                requires :bath_type_name, type:String
            end
            put ':id' do
                BathType.find(params[:id]).update({
                                                     bath_type_name:params[:bath_type_name]
                                                 })
            end
        
        end
    end
end