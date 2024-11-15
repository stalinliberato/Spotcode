class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  before_action :authenticate_user!
  protect_from_forgery unless: -> { request.format.json? }
end
