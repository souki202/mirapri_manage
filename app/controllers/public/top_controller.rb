require "date"

class Public::TopController < ApplicationController
    def index
        @title = 'トップページ'
    end
end
