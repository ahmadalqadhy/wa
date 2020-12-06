class Api::ConstituentsController < ApplicationController
    def create
        @constituent = Constituent.new(constituent_params)
        if @constituent.save
            debugger
            login(@constituent)
            debugger
            render "api/constituents/show"
        else
            render json: @constiuent.errors.full_messages, status: 422
        end
    end

    def destroy
        @constituent = Constituent.find_by(id: params[:id])
        if @constiuent
            @constiuent.destroy
            render :show
        else
            render ['Could not find Constituent']
        end
    end

  private

  def constituent_params
    params.require(:constituent).permit(:name, :age, :party)
  end
end