class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Добавляем флеш-методы для вывода сообщений по результатам изменения постов
  add_flash_types :success, :danger
end
