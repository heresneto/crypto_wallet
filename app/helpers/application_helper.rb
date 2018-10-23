module ApplicationHelper
	def dataBR(data_us)
		data_us.strftime("%d/%m/%Y")
	end

	def appName
		"Crypto Wallet App"
	end
end
