class FieldsetsController < ApplicationController
  respond_to :json, :html, :csv

  before_filter :fieldset_from_params, only: [ :new, :create ]
  before_filter :get_fieldset, only: :show
  before_filter :get_fieldset_with_answers, only: :export
  before_filter :load_fieldsets, only: :index

  def index
    respond_with do |fmt|
      fmt.json { render :json => @fieldsets.map { |fieldset| [fieldset.title, fieldset.id] }.to_json }
    end
  end

  def new
  end

  def create
    if not @fieldset.save
      flash[:error] = @fieldset.errors.full_messages.join("<br>").html_safe
      redirect_to action: :new, params: params and return
    end
    flash[:succes] = "#{@fieldset.title} has been saved"
    redirect_to root_path
  end

  def destroy
    Fieldset.find(params[:id]).destroy
    redirect_to root_path
  end

  def show
    respond_with do |format|
      format.json { render :json => @fieldset.json }
    end
  end

  def export
    request.format = 'csv'
    respond_to do |fmt|
      fmt.csv { send_data @fieldset.to_csv, filename: 'export.csv', disposition: 'attachment' }
    end
  end

  private

  def fieldset_from_params
    @fieldset = Fieldset.new fieldset_params
  end

  def get_fieldset_with_answers
    @fieldset = Fieldset.includes(fields: :answers).find(params[:fieldset_id])
  end

  def get_fieldset
    @fieldset = Fieldset.find params[:id]
  end

  def fieldset_params
    if params.include? :fieldset
      params.require(:fieldset).permit :json
    else
      nil
    end
  end

  def load_fieldsets
    @fieldsets = Fieldset.all
  end
end
