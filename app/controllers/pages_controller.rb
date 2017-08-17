class PagesController < ApplicationController

    def about
    end

    def work
    end

    def blog
         @posts = Post.all

    end

    def contact
    end

    def home
    end

end
