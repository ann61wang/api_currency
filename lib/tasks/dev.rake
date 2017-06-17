namespace :dev do
  task :fetch_currency => :environment do
    puts "Fetch currency data..."
    response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
    data = JSON.parse(response.body)

    data["result"][0]["data1"]
    
    Currency.create!( :fBuyPri=> data["result"][0]["data1"]["fBuyPri"], 
                      :mBuyPri=> data["result"][0]["data1"]["mBuyPri"], 
                      :currency_data=> data["result"][0]["data1"]["date"], 
                      :currency_name=> data["result"][0]["data1"]["name"],
                      :fSellPri=> data["result"][0]["data1"]["fSellPri"],
                      :mSellPri=> data["result"][0]["data1"]["mSellPri"]
                       )

    puts "Total: #{Currency.count} currencies"
  end
end
