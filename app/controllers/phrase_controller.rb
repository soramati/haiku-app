class PhraseController < ApplicationController
  def index
  	# データを取得
  	phrase5 = Phrase5.all
  	phrase7 = Phrase7.all
    
	#ランダム機能
    @phrase5_a = phrase5.sample
    @phrase7 = phrase7.sample
    @phrase5_b = phrase5.sample
  end

  def new
  	# 作成画面へ
  end

  def create5
	  	phrase5 = Phrase5.create(phrase: params[:phrase5])
	  	if phrase5.save
	     redirect_to '/'
	 end
  end
  def create7
  	phrase7 = Phrase7.create(phrase: params[:phrase7])
  	if phrase7.save
  	 redirect_to '/'
  	end
  end
end
