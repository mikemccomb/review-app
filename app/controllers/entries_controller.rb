class EntriesController < ApplicationController
  before_action :set_subject
  before_action :set_entry, only: %i[ show edit update destroy ]

  # GET /entries or /entries.json
  def index
    @entries = @subject.entries
  end

  # GET /entries/1 or /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = @subject.entries.build
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries or /entries.json
  def create
    @entry = @subject.entries.build(entry_params)

    if @entry.save
      redirect_to(@entry.subject)
    else
      render action: "new"
    end

    # respond_to do |format|
    #   if @entry.save
    #     format.html { redirect_to subject_entry_path(@subject), notice: "Entry was successfully created." }
    #     format.json { render :show, status: :created, location: @entry }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @subject.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to subject_entry_path(@subject), notice: "Entry was successfully updated." }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    # subject_id = @entry.subject_id
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to subject_entries_path(@subject), notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = @subject.entries.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entry_params
    params.require(:entry).permit(:subject_id, :category_id, :date, :rating, :notes)
  end
end
