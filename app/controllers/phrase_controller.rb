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

  def create5
	  	@phrase = Phrase5.create(phrase: params[:phrase5])

	  	if @phrase.save
	  		redirect_to "/new", notice: "上の句に「#{@phrase.phrase}」を登録しました。"
	 	else
	  		redirect_to "/new", notice: "「#{@phrase.phrase}」に使用できない文字が含まれているか、既に登録されています。"
	  	end

	 end
  def create7
  	@phrase = Phrase7.create(phrase: params[:phrase7])
	  	if @phrase.save
	  		redirect_to "/new", notice: "中の句に「#{@phrase.phrase}」を登録しました。"
	 	else
	  		redirect_to "/new", notice: "「#{@phrase.phrase}」に使用できない文字が含まれているか、既に登録されています。"
	  	end
  end
	def create5b
	phrase = Phrase5b.create(phrase: params[:phrase5b])
	  	if @phrase.save
	  		redirect_to "/new", notice: "下の句に「#{@phrase.phrase}」を登録しました。"
	 	else
	  		redirect_to "/new", notice: "「#{@phrase.phrase}」に使用できない文字が含まれているか、既に登録されています。"
	  	end
  end

end
