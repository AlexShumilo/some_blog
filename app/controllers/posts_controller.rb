#Создаём контроллер для наших постов, который наследуется от основного контроллера приложения


class PostsController < ApplicationController
	
	#Вызываем повторяющуюся команду перед всеми функциями, которые её используют.
	#Будет перед вызовом каждой функции из определённого масива "only" добавлять найденную статью
	before_action :set_post, only: [ :show, :edit, :update, :destroy]

	#Экшн (функция) с названием index выводит все посты (объекты класса Post)
	def index
	  @posts = Post.all
	end

	#Создаём функцию (экшн) для отображения содержимого каждого поста
	def show
	end

	#Создаём функцию (экшн) для создания нового поста
	def new
	  @post = Post.new
	end

	#Создаём функцию (экшн) для добавления нового поста; при этом отфильтровываем входящие параметры
	def create
	  @post = Post.new(post_params)
		#Прописываем обработчик для сохранения поста в базе данных в зависимости от условий
	  if @post.save
	    redirect_to @post, success: 'Статья успешно создана'
	  else
		render :new, danger: 'Статья не создана'
	  end  	
	end
	
	#Создаём функцию (экшн) для редактирования поста
	def edit
	end

	#Создаём функцию (экшн) для сохранения отредактированного поста
	def update
	  if @post.update_attributes(post_params)
	  	redirect_to @post, success: 'Статья успешно обновлена'
	  else
	  	render :edit, danger: 'Статья не обновлена'
	  end
	end

	#Создаём функцию (экшн) для удаления поста
	def destroy
		@post.destroy
		redirect_to posts_path
	end


	
	private
	#Создаём метод для объединения повторения в нескольких функциях - @post = Post.find(params[:id]) - поиска поста по id
	def set_post
		@post = Post.find(params[:id])
	end

	#Создаём приватный метод для фильтрации входящих параметров нового поста
	def post_params #В параметрах обязательно должен присутствовать один из параметров posts, в котором разрешаем определённые поля
	  params.require(:post).permit(:title, :summary, :body, :image)
	end
end