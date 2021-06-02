module Api
    module V1
        class UfsController < ApplicationController
            def by_date
                @uf = Uf.find_by(date: params[:date])
                if @uf
                    render json: @uf
                else
                    render json: "estas buscando un valor de la uf que no poseo"
                end
            end

            def visit_count
                @client = Client.find_by(name: request.headers["cliente"])
                render json:"error"
            end
        end
    end
end
