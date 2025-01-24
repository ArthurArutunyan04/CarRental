class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::ConnectionNotEstablished, with: :handle_db_connection_error

  private

  def handle_db_connection_error(exception)
    redirect_to error_url
  end
end