module Rule_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :rule do
            desc "List all rule"
            get do
                Rule.all
            end
            
            desc "create a new rule"
## This takes care of parameter validation
            params do
                requires :description, type: String
            end
## This takes care of creating employee
            post do
                Rule.create!({
                                 description:params[:description]
                             })
            end
            
            desc "delete an rule"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                Rule.find(params[:id]).destroy!
            end
            
            desc "update an rule"
            params do
                requires :id, type: Integer
                requires :description, type: String
            end
            put ':id' do
                Rule.find(params[:id]).update({
                                                  description:params[:description]
                                              })
            end
        
        end
    end
end