class MtgCardsController < ApplicationController
  # GET /mtg_cards
  # GET /mtg_cards.json
  def index
    @mtg_cards = MtgCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtg_cards }
    end
  end

  # GET /mtg_cards/1
  # GET /mtg_cards/1.json
  def show
    @mtg_card = MtgCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtg_card }
    end
  end

  # GET /mtg_cards/new
  # GET /mtg_cards/new.json
  def new
    @mtg_card = MtgCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtg_card }
    end
  end

  # GET /mtg_cards/1/edit
  def edit
    @mtg_card = MtgCard.find(params[:id])
  end

  # POST /mtg_cards
  # POST /mtg_cards.json
  def create
    @mtg_card = MtgCard.new(params[:mtg_card])

    respond_to do |format|
      if @mtg_card.save
        format.html { redirect_to @mtg_card, notice: 'Mtg card was successfully created.' }
        format.json { render json: @mtg_card, status: :created, location: @mtg_card }
      else
        format.html { render action: "new" }
        format.json { render json: @mtg_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtg_cards/1
  # PUT /mtg_cards/1.json
  def update
    @mtg_card = MtgCard.find(params[:id])

    respond_to do |format|
      if @mtg_card.update_attributes(params[:mtg_card])
        format.html { redirect_to @mtg_card, notice: 'Mtg card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtg_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtg_cards/1
  # DELETE /mtg_cards/1.json
  def destroy
    @mtg_card = MtgCard.find(params[:id])
    @mtg_card.destroy

    respond_to do |format|
      format.html { redirect_to mtg_cards_url }
      format.json { head :no_content }
    end
  end
end
