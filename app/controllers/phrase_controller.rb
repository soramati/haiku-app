class PhraseController < ApplicationController
  def index
  	# データを取得
  	phrase5 = Phrase5.all
  	phrase7 = Phrase7.all
  	phrase5b = Phrase5b.all
    
	#ランダム機能
    @phrase5_a = phrase5.sample
    @phrase7 = phrase7.sample
    @phrase5b = phrase5b.sample
  end

  def new
  	# 作成画面へ
  end

  def create

	  	
	  	if @phrase5 = Phrase5.create(phrase: params[:phrase5]).save
	  		redirect_to "/", notice: "上の句を登録しました。"
    	elsif @phrase7 = Phrase7.create(phrase: params[:phrase7]).save
	  		redirect_to "/", notice: "中の句を登録しました。"
		elsif  @phrase5b = Phrase5b.create(phrase: params[:phrase5b]).save
	  		redirect_to "/", notice: "下の句を登録しました。"
	 	else
	  		redirect_to "/", notice: "使用できない文字が含まれているか、既に登録されています。"
	  	end

	end

end
