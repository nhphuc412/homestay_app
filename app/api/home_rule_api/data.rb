module Home_Rule_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :home_rule do
            desc "List all HomeRule"
            get do
                HomeRule.all
            end
            
            desc "create a new HomeRule"
## This takes care of parameter validation
            params do
                requires :rule_id, type: Integer
                requires :home_id, type: Integer
            end
## This takes care of creating employee
            post do
                HomeRule.create!({
                                     rule_id:params[:rule_id],
                                     home_id:params[:home_id]
                             })
            end
            
            desc "delete an HomeRule"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                HomeRule.find(params[:id]).destroy!
            end
            
            desc "update an HomeRule"
            params do
                requires :id, type: Integer
                requires :rule_id, type: Integer
                requires :home_id, type: Integer
            end
            put ':id' do
                HomeRule.find(params[:id]).update({
                                                      rule_id:params[:rule_id],
                                                      home_id:params[:home_id]
                                              })
            end
        
        end
    end
end