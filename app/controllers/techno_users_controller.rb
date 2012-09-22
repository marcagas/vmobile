class TechnoUsersController < ApplicationController

  before_filter :load_technouser, :only => [:show, :edit, :update, :destroy]

  def index
    @technousers = TechnoUser.all
  end

  def new
    @technouser = TechnoUser.new
  end

  def create
    #params[:techno_user][:date_sold] = DateTime.parse(params[:techno_user][:date_sold])
    @technouser = TechnoUser.new(params[:techno_user])

    respond_to do |format|
      if @technouser.save
        format.html { redirect_to @technouser, :notice=>'Success' }
      else
        format.html { render :action => 'new' }
      end
    end
  end

  def show

  end

  def edit

  end

  def destroy
    @technouser.destroy
    redirect_to techno_users_path
  end

  def update
    #params[:techno_user][:date_sold] = DateTime.parse(params[:techno_user][:date_sold])
    @technouser = TechnoUser.find(params[:id])

    respond_to do |format|
      if @technouser.update_attributes(params[:techno_user])
        format.html { redirect_to @technouser, :notice=>'Successfully updated' }
      else
        format.html { render :action => 'new' }
      end
    end
  end

  private

  def load_technouser
    @technouser = TechnoUser.find(params[:id])
  end

end