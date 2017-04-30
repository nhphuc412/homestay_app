module Home_Api
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"
        
        resource :home do
            desc "List all homestay"
            get do
                Home.all
            end


            desc "List all homestay by id"
            get "id=:id" do
                begin
                    Home.find_by_id(params[:id])
                rescue ActiveRecord::RecordNotFound
                    error!({ status: :not_found }, 404)
                end
            end
            
            desc "List all homestay by id hometype"
            get "home_type_id=:id" do
                begin
                    @Home = Home.where("home_type_id = ?", params[:id])
                rescue ActiveRecord::RecordNotFound
                    error!({ status: :not_found }, 404)
                end
            end
            
            desc "create a new home stay"
## This takes care of parameter validation
            params do
                requires :home_name, type: String
                requires :home_type_id, type: Integer
                requires :m_pref_id, type: Integer
            end
## This takes care of creating employee
            post do
                Home.create!({
                                     home_name:params[:home_name],
                                     home_type_id:params[:home_type_id],
                                     m_pref_id:params[:m_pref_id],
                                     description:params[:description],
                                     image:params[:image],
                                     address:params[:address],
                                     status:params[:status]
                                 })
            end
            
            desc "delete an home stay"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                Home.find(params[:id]).destroy!
            end
            
            desc "update an home"
            params do
                requires :id, type: Integer
                requires :home_name, type: String
            end
            put ':id' do
                Home.find(params[:id]).update({
                                                  home_name:params[:home_name],
                                                  home_type_id:params[:home_type_id],
                                                  m_pref_id:params[:m_pref_id],
                                                  description:params[:description],
                                                  image:params[:image],
                                                  address:params[:address],
                                                  status:params[:status]
                                                  })
            end
        
        end
    end
end