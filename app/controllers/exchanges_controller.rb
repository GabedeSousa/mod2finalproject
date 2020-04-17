class ExchangesController < ApplicationController
    def create
        @exchange = Exchange.create(exchange_params)
        @exchange.buy
        @exchange.sell
        @exchange.listing.toggle(:active).save!
        @exchange.save
        redirect_to exchange_path(@exchange)
    end

    def show
        @exchange = Exchange.find(params[:id])
    end

    def add_like
        @exchange = Exchange.find(params[:id])

        @buyer = @exchange.buyer
        @seller = @exchange.seller

        if current_user.id == @seller.id
            if @buyer.likes < @buyer.total_exchanges
                @buyer.likes += 1
    
                @buyer.save
            end
        else
            if @seller.likes < @seller.total_exchanges
                @seller.likes += 1
    
                @seller.save
            end
        end
        
        redirect_to user_path(current_user.id)
    end

    private

    def exchange_params
        params.require(:exchange).permit(:user_id, :listing_id)
    end

end
