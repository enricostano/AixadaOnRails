class FamilyUnitsController < ApplicationController
  # GET /family_units
  # GET /family_units.json
  def index
    @family_units = FamilyUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_units }
    end
  end

  # GET /family_units/1
  # GET /family_units/1.json
  def show
    @family_unit = FamilyUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_unit }
    end
  end

  # GET /family_units/new
  # GET /family_units/new.json
  def new
    @family_unit = FamilyUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_unit }
    end
  end

  # GET /family_units/1/edit
  def edit
    @family_unit = FamilyUnit.find(params[:id])
  end

  # POST /family_units
  # POST /family_units.json
  def create
    @family_unit = FamilyUnit.new(params[:family_unit])

    respond_to do |format|
      if @family_unit.save
        format.html { redirect_to @family_unit, notice: 'Family unit was successfully created.' }
        format.json { render json: @family_unit, status: :created, location: @family_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @family_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_units/1
  # PUT /family_units/1.json
  def update
    @family_unit = FamilyUnit.find(params[:id])

    respond_to do |format|
      if @family_unit.update_attributes(params[:family_unit])
        format.html { redirect_to @family_unit, notice: 'Family unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_units/1
  # DELETE /family_units/1.json
  def destroy
    @family_unit = FamilyUnit.find(params[:id])
    @family_unit.destroy

    respond_to do |format|
      format.html { redirect_to family_units_url }
      format.json { head :no_content }
    end
  end
end
