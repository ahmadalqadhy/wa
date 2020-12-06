class Api::LegislatorsController < ApplicationController
    def create
        @legislator = Legislator.new(legislator_params)
        if @legislator.save
            debugger
            login(@legislator)
            render "api/legislators/show"
        else
            render json: @legislator.errors.full_messages, status: 422
        end
    end

    def destroy
        @legislator = Legislator.find_by(id: params[:id])
        if @legislator
            @legislator.destroy
            render :show
        else
            render ['Could not find Legislator']
        end
    end

  private

  def legislator_params
        params.require(:legislator).permit(:name, :party, :chamber)
  end
end