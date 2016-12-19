module API
  module V1
    class Pages < Grape::API
      include API::V1::Defaults

      resource :pages do
        desc "Return all pages"
        get "", root: :pages do
          #Page.all
        end
      end
    end
  end
end
