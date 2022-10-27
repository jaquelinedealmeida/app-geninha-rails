class ParticipantsController < ApplicationController
    def create 
        @session = Session.find(params[:session_id])
        @participant = @session.participants.create(participant_params)
        redirect_to session_path(@session)
    end

    private
    def participant_params
        params.require(:participant).permit(:participants,
    :role)
    end
end
