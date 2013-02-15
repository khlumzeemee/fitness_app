class StandardMeasurementsController < ApplicationController
  # GET /standard_measurements
  # GET /standard_measurements.json
  def index
    @standard_measurements = StandardMeasurement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standard_measurements }
    end
  end

  # GET /standard_measurements/1
  # GET /standard_measurements/1.json
  def show
    @standard_measurement = StandardMeasurement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standard_measurement }
    end
  end

  # GET /standard_measurements/new
  # GET /standard_measurements/new.json
  def new
    @standard_measurement = StandardMeasurement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standard_measurement }
    end
  end

  # GET /standard_measurements/1/edit
  def edit
    @standard_measurement = StandardMeasurement.find(params[:id])
  end

  # POST /standard_measurements
  # POST /standard_measurements.json
  def create
    @standard_measurement = StandardMeasurement.new(params[:standard_measurement])

    respond_to do |format|
      if @standard_measurement.save
        format.html { redirect_to @standard_measurement, notice: 'Standard measurement was successfully created.' }
        format.json { render json: @standard_measurement, status: :created, location: @standard_measurement }
      else
        format.html { render action: "new" }
        format.json { render json: @standard_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standard_measurements/1
  # PUT /standard_measurements/1.json
  def update
    @standard_measurement = StandardMeasurement.find(params[:id])

    respond_to do |format|
      if @standard_measurement.update_attributes(params[:standard_measurement])
        format.html { redirect_to @standard_measurement, notice: 'Standard measurement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standard_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_measurements/1
  # DELETE /standard_measurements/1.json
  def destroy
    @standard_measurement = StandardMeasurement.find(params[:id])
    @standard_measurement.destroy

    respond_to do |format|
      format.html { redirect_to standard_measurements_url }
      format.json { head :no_content }
    end
  end
end
