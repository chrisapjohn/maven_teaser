class RatingsController < ApplicationController
  # GET /ratings
  # GET /ratings.json
  before_filter :get_advisor
  before_filter :authenticate_user!, :except => [:show, :index, :new, :create]

  def get_advisor
    @advisor = Advisor.find(params[:advisor_id])
  end

  def index
    @ratings = @advisor.ratings.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ratings }
    end
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    @rating = @advisor.ratings.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rating }
    end
  end

  # GET /ratings/new
  # GET /ratings/new.json
  def new
    @rating = @advisor.ratings.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rating }
    end
  end

  # GET /ratings/1/edit
  def edit
    @rating = Rating.find(params[:id])
  end

  # POST /ratings
  # POST /ratings.json
  def create
    if current_user.nil?
      session[:rating] = params
      redirect_to new_user_registration_path
    else
      @rating = @advisor.ratings.new(params[:rating])
      @rating.user = User.find(current_user.id)
      respond_to do |format|
      if @rating.save
        format.html { redirect_to [@advisor, @rating], notice: 'Rating was successfully created.' }
        format.json { render json: [@advisor, @rating], status: :created, location: @rating }
      else
        format.html { render action: "new" }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # PUT /ratings/1
  # PUT /ratings/1.json
  def update
    @rating = @advisor.ratings.find(params[:id])

    respond_to do |format|
      if @rating.update_attributes(params[:rating])
        format.html { redirect_to [@advisor, @rating], notice: 'Rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating = @advisor.ratings.find(params[:id])
    @rating.destroy

    respond_to do |format|
      format.html { redirect_to advisor_ratings_path(@advisor) }
      format.json { head :no_content }
    end
  end
end
