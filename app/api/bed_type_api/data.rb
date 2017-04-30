module Bed_Type_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :bedtype do
            desc "List all bed type"
            get do
                BedType.all
            end
            
            desc "create a new bed type"
## This takes care of parameter validation
            params do
                requires :bed_type_name, type: String
            end
## This takes care of creating employee
            post do
                BedType.create!({
                                    bed_type_name:params[:bed_type_name]
                                 })
            end
            
            desc "delete an bed type"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                BedType.find(params[:id]).destroy!
            end
            
            desc "update an bed"
            params do
                requires :id, type: Integer
                requires :bed_type_name, type:String
            end
            put ':id' do
                BedType.find(params[:id]).update({
                                                     bed_type_name:params[:bed_type_name]
                                                  })
            end
        
        end
    end
end