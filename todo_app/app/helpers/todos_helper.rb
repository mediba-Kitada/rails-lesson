module TodosHelper

  def new_line(s)
	# "\n" を "<br/>"に変換
    # h() HTMLエスケープ
	raw h(s).gsub(/\n/,'<br\>')
  end

end
