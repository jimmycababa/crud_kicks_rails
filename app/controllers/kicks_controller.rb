class KicksController < ApplicationController
  before_action :set_kick, only: %i[ show edit update destroy ]

  # GET /kicks or /kicks.json
  # .all is an active record method that uses active record to talk to the database ORM (object relational mapper), which is the interface between the programming language and the database to communicate with each other.
  def index
    @kicks = Kick.kick_size
  end

  # GET /kicks/1 or /kicks/1.json
  def show
  end

  # GET /kicks/new
  # get req to run the new method. defines the variable @kick to be Kick.new. sends that variable to new.html.erb (views). sees the variable and renders the form on the page.
  def new
    @kick = Kick.new
  end

  # GET /kicks/1/edit
  def edit
  end

  # POST /kicks or /kicks.json
  def create
    @kick = Kick.new(kick_params)

    # respond_to do |format|
    if @kick.save
      redirect_to @kick, notice: "Kick was successfully created."
      # format.html { redirect_to @kick, notice: "Kick was successfully created." }
      # format.json { render :show, status: :created, location: @kick }
    else
      render :new, status: :unprocessable_entity

      # format.html { render :new, status: :unprocessable_entity }
      # format.json { render json: @kick.errors, status: :unprocessable_entity }
    end
    # end
  end

  # PATCH/PUT /kicks/1 or /kicks/1.json
  def update
    # respond_to do |format|
    # update is an active record method and calling kick_params is added security. we filtered the params only to what we want
    if @kick.update(kick_params)
      redirect_to @kick, notice: "Kick was successfully updated."
      # format.html { redirect_to @kick, notice: "Kick was successfully updated." }
      # format.json { render :show, status: :ok, location: @kick }
    else
      render :edit, status: :unprocessable_entity
      # format.html { render :edit, status: :unprocessable_entity }
      # format.json { render json: @kick.errors, status: :unprocessable_entity }
    end
    # end
  end

  # DELETE /kicks/1 or /kicks/1.json
  def destroy
    @kick.destroy
    # kicks_url is from the resources methods in routes file and is the index
    redirect_to kicks_url, notice: "Kick was successfully destroyed."
    # respond_to do |format|
    # format.html { redirect_to kicks_url, notice: "Kick was successfully destroyed." }
    # format.json { head :no_content }
    # end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kick
    @kick = Kick.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def kick_params
    # filtered list of parameters
    params.require(:kick).permit(:brand, :style, :size)
  end
end
