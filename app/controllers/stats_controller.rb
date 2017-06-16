class StatsController < ApplicationController
  before_filter :default_format_pdf
  before_filter :get_fieldset
  respond_to :pdf

  def show
  end

  private

  def default_format_pdf
    request.format = 'pdf'
  end

  def get_fieldset
    @fieldset = Fieldset.includes(fields: :answers).find params[:fieldset_id]
  end
end
