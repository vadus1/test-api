module API
  module V1
    class Pages < Grape::API
      include API::V1::Defaults

      resource :pages do
        desc "Return all pages"
        get do
          Page.all
        end

        desc "Create an page"
        params do
          requires :url,     type: String
        end
        post do
          Page.create!(url: params.url)
        end
      end
    end
  end
end
