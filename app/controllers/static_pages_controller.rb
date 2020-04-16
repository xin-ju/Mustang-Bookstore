class StaticPagesController < ApplicationController

  def home
    respond_to do |format|
      format.html { render :home}
    end
  end

  def sign_up
    respond_to do |format|
      format.html { render :sign_up, locals: { new_sign_up: {} } }
    end
  end

  def new_sign_up
      required = [:username, :email, :password]
      form_complete = true
      required.each do |f|
        if params.has_key? f and not params[f].blank?
          # that's good news. do nothing
        else
          form_complete = false
        end
      end
      if form_complete
        form_status_msg = 'Welcome to Mustang Books!'
      else
        form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
      end
      respond_to do |format|
        format.html { render :sign_up, locals: { status_msg: form_status_msg, new_sign_up: params } }
    end
  end

  def log_in
    respond_to do |format|
      format.html { render :log_in, locals: {new_log_in: {} } }
    end
  end

  def new_log_in
    required = [:username, :password]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end
    if form_complete
      form_status_msg = 'Welcome to Mustang Books!'
    else
      form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
    end
    respond_to do |format|
      format.html { render :log_in, locals: { status_msg: form_status_msg, new_log_in: params } }
  end
end
end