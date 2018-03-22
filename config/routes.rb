Rails.application.routes.draw do

	#Создаём корневой маршрут - точку входа приложения
	#"index" взято из контроллера posts - это название функции (экшн), которая срабатывает при загрузке
	root 'posts#index'

	#Создаём новые маршруты для всего контроллера, проверяются командой в консоли "rails routes"
	resources :posts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
