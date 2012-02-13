class UsersController < ApplicationController
  before_filter :require_login
  def new
    @user=User.new
  end
  def show
    @user=User.find_by_id(params[:id])
  end
  def create
    @user=User.new(params[:user])
    if @user.save
      redirect_to rool_url, :notice=>"Signed up!"
    else 
      render "new"
    end
  end
  def destroy
    @user=User.find_by_id (params[:id])
  end
  def edit
    @user=User.find_by_id(params[:id])
  end
  def update
   @user = User.find_by_id(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  
  end 
  def index
    @users=User.all(:limit=>10)
  end
end
