class EvidencesController < ApplicationController

    def create    
        @audit = Audit.find params[:audit_id]
        @evidence = Evidence.new evidence_params
        @evidence.audit = @audit
        
        if @evidence.save
            redirect_to audit_path(@audit)
        else
          @evidences = @audit.evidences.order(created_at: :desc)
          render "audits/show"
        end
    end

    def delete
    end

    def destroy
        @evidence ||= Evidence.find params[:id]
        @evidence.destroy

        redirect_to audit_path(@evidence.audit)
    end



    private
    def evidence_params
      params.require(:evidence).permit(:title, :doc)
    end
end
