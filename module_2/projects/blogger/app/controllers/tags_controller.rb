class TagsController < ApplicationController
  include TagsHelper
  before_action :set_tag, only: [:show, :destroy]

  def index
    @tags = Tag.all
  end

  def show

  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

end
