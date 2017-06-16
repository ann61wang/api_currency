namespace :dev do
  task :fetch_currency => :environment do
    puts "Fetch currency data..."
    response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
    data = JSON.parse(response.body)

    data["result"].each do |c|

        Currency.create!( :data1 => c["data1"], :data2 => c["data2"], :data3 => c["data3"],
                      :data4 => c["data4"], :data5 => c["data5"], :data6 => c["data6"] )

    end

    puts "Total: #{Currency.count} currencies"
  end
end
