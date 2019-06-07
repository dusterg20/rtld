class TagController < ApplicationController
    before_action :current_tag, only:[:show, :edit, :update, :destroy]
    
    def index
        @tags = Tag.all
    end

    def show
    end

    def new
        @tag = Tag.new
    end

    def create
        tag = Tag.create(tag_params)
        redirect_to tag_index_path
    end
   
    def edit

    end
    
    def update
        @tag.update(tag_params)
        redirect_to tag_index_path
    end
    
    def destroy
        @tag.destroy
        redirect_to tag_index_path
    end
    
    private
       
    def tag_params
        params.require(:tag).permit(:key_id, :description)
    end
    
    def current_tag
        @tag = Tag.find(params[:id])
    end
        
end



