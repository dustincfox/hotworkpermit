class PermitsController < ApplicationController
  before_action :set_permit, only: [:show, :edit, :update, :destroy]

  # GET /permits
  # GET /permits.json
  def index
    @permits = Permit.all
  end

  # GET /permits/1
  # GET /permits/1.json
  def show
  end

  # GET /permits/new
  def new
    @permit = Permit.new
    @project_ids = []
    Project.all.each do |project|
      project_temp = []
      project_temp << project.name
      project_temp << project.id

      @project_ids << project_temp
    end


  end

  # GET /permits/1/edit
  def edit
  end

  # POST /permits
  # POST /permits.json
  def create

    new_permit_params = post_params
    new_permit_params["project"] = Project.find_by(id: new_permit_params["project"].to_i)

    @permit = Permit.new(new_permit_params)

    respond_to do |format|
      if @permit.save
        format.html { redirect_to @permit, notice: 'Permit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @permit }
      else
        format.html { render action: 'new' }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permits/1
  # PATCH/PUT /permits/1.json
  def update
    respond_to do |format|
      if @permit.update(post_params)
        format.html { redirect_to @permit, notice: 'Permit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permits/1
  # DELETE /permits/1.json
  def destroy
    @permit.destroy
    respond_to do |format|
      format.html { redirect_to permits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permit
      @permit = Permit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permit_params
      params[:permit]
    end

    def post_params
      params.require(:permit).permit(:status, :sec1_q1, :sec1_q2, :sec1_q3, :sec1_q4, :sec1_q5, :sec1_q6, :sec1_q7, :sec1_q8, :sec1_q9, :sec1_q10, :sec1_q11, :sec1_q12, :sec1_q13, :sec1_q14, :firewatch_sign_start, :project, :location, :building, :floor, :task, :company, :subcontractor_name)
    end
end