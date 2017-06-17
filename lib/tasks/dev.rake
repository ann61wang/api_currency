namespace :dev do
  task :fetch_currency => :environment do
    puts "Fetch currency data..."
    response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
    data = JSON.parse(response.body)

    data["result"].each do |c|
    

        Currency.create!( :currency_data => c["currency_data"], :currency_name => c["currency_name"], :fBuyPri => c["fBuyPri"],
                      :mBuyPri => c["mBuyPri"], :fSellPri => c["fSellPri"], :mSellPri => c["mSellPri"] )

    end

    puts "Total: #{Currency.count} currencies"
  end
end
