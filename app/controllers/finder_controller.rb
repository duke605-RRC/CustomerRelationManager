class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def missing_email
    @customers = Customer.where("email == null OR email == ''")
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end
end
