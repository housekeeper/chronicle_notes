class ChronicleNotesController < ApplicationController
  # GET /chronicle_notes
  # GET /chronicle_notes.json
  def index
    @chronicle_notes = ChronicleNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chronicle_notes }
    end
  end

  # GET /chronicle_notes/1
  # GET /chronicle_notes/1.json
  def show
    @chronicle_note = ChronicleNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chronicle_note }
    end
  end

  # GET /chronicle_notes/new
  # GET /chronicle_notes/new.json
  def new
    @chronicle_note = ChronicleNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chronicle_note }
    end
  end

  # GET /chronicle_notes/1/edit
  def edit
    @chronicle_note = ChronicleNote.find(params[:id])
  end

  # POST /chronicle_notes
  # POST /chronicle_notes.json
  def create
    @chronicle_note = ChronicleNote.new(params[:chronicle_note])

    respond_to do |format|
      if @chronicle_note.save
        format.html { redirect_to @chronicle_note, notice: 'Chronicle note was successfully created.' }
        format.json { render json: @chronicle_note, status: :created, location: @chronicle_note }
      else
        format.html { render action: "new" }
        format.json { render json: @chronicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chronicle_notes/1
  # PUT /chronicle_notes/1.json
  def update
    @chronicle_note = ChronicleNote.find(params[:id])

    respond_to do |format|
      if @chronicle_note.update_attributes(params[:chronicle_note])
        format.html { redirect_to @chronicle_note, notice: 'Chronicle note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chronicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chronicle_notes/1
  # DELETE /chronicle_notes/1.json
  def destroy
    @chronicle_note = ChronicleNote.find(params[:id])
    @chronicle_note.destroy

    respond_to do |format|
      format.html { redirect_to chronicle_notes_url }
      format.json { head :no_content }
    end
  end
end
