class RepliesController < ApplicationController
  before_filter :get_fieldset, only: :new

  def create
    Reply.get_answers replies_params
    render nothing: true
  end

  private

  def get_fieldset
    @fieldset = Fieldset.find params[:fieldset_id]
  end

  def replies_params
    params.require(:answers)
  end
end
