class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "hello world"
    render html: "ciao ho aggiunto anche questo"
    render html: "e anche questo" #ehi
  end
end
