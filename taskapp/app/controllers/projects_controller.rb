class ProjectsController < ApplicationController

  # Don't Repeat Yourself
  ## 各メソッドの共通処理をまとめる
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def update
	if @project.update(project_params)
      redirect_to projects_path
	else
      render 'edit'
	end
  end

  def create
    # POSTされる値をフィルタリングする
	## project_paramsメソッドを定義し、利用する値のみフィルタする
    @project = Project.new(project_params)
	# validateに失敗したらfalseが返却されることを利用する
	if @project.save
      redirect_to projects_path
	else
      # validateに失敗したら新規登録画面に遷移
      render 'new'
	end
  end

  def destroy
	@project.destroy
	redirect_to projects_path
  end

  private

    # Strong Parameters
    ## Mass Assignmentから防御
    def project_params
  	  params[:project].permit(:title)
    end

	def set_project
      # paramsメソッドでクエリパラメータを取得
      @project = Project.find(params[:id])
	end

end
