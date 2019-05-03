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

  def create
  	# 新しいPhraseを追加
  	phrase7 = phrase7.new(phrase: params[:phrase7])
  	phrase7.save
  	phrase5 = phrase5.new(phrase: params[:phrase5])
  	phrase5.save
  end
end
