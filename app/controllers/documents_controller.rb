require "documents/all_context" 
require "documents/create_context" 
require "documents/get_context" 
require "documents/update_context" 
require "documents/destroy_context" 

class DocumentsController < ApplicationController
  def index
    @documents = Documents::AllContext.new(current_user).execute
  end

  def show
    @document = Documents::GetContext.new(current_user, params[:id]).execute
  end

  def new
    @document = Documents::BuildContext.new(current_user).execute
  end

  def edit
    @document = Documents::GetContext.new(current_user).execute
  end

  def create
    @document = Documents::CreateContext.new(current_user, params[:document]).execute

    if @document.valid?
      redirect_to @document, notice: 'Document was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @document = Documents::UpdateContext.new(current_user, params[:id], params[:document]).execute

    if @document.valid?
      redirect_to @document, notice: 'Document was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @document = Documents::DestroyContext.new(current_user, params[:id]).execute

    redirect_to documents_url
  end
end
