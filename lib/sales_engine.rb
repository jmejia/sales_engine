require './lib/merchant_repository'
class SalesEngine

  def startup

  end

  def merchant_repository
    @merchant_repository ||= MerchantRepository.new
  end

  def invoice_repository
 
  end

  def item_repository

  end

  def invoice_item_repository
s
  end

  def customer_repository

  end
end