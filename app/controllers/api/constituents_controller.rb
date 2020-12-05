class Api::ConstituentsController < ApplicationController
    def create
        @constiuent = Constituent.new(constituent_params)
        if @legislator.save
        #   login(@user)
            render "api/constituents/show"
        else
            render json: @constiuent.errors.full_messages, status: 422
        end
    end

    def destroy
        @legislator = Constituent.find_by(id: params[:id])
        if @constiuent
            @constiuent.destroy
            render :show
        else
            render ['Could not find Constituent']
        end
    end

  private

  def constituent_params
    params.require(:constiuent).permit(:name, :age, :party)
  end
end