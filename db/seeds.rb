puts "----------------------------------------------------------"
puts "Cadastrando modedas..."

Coin.create!(
  description: "Bitcoin",
  acronym: "BTC",
  url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2000px-Bitcoin.svg.png",
)

Coin.create!(
  description: "Ethereum",
  acronym: "ETH",
  url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/2000px-Ethereum_logo_2014.svg.png",
)

Coin.create!(
  description: "Dash",
  acronym: "DSH",
  url_image: "https://cdn.freebiesupply.com/logos/large/2x/dash-3-logo-png-transparent.png",
)

Coin.create!(
  description: "Litecoin",
  acronym: "LTC",
  url_image: "https://vignette.wikia.nocookie.net/cryptocurrency/images/5/5d/Litecoin.png/revision/latest?cb=20140316100431",
)

Coin.create!(
  description: "Ripple",
  acronym: "RPL",
  url_image: "https://cdn.freebiesupply.com/logos/large/2x/ripple-2-logo-png-transparent.png",
)

Coin.create!(
  description: "XRP",
  acronym: "XRP",
  url_image: "https://user-images.githubusercontent.com/1287855/42951396-f1d82368-8b2a-11e8-9855-e20630fc1dc0.png",
)

Coin.create!(
  description: "EOS",
  acronym: "EOS",
  url_image: "https://i.pinimg.com/originals/a5/e0/92/a5e0923ba52ab0ea23962d8e5f1bae06.png",
)

Coin.create!(
  description: "Stellar",
  acronym: "XLM",
  url_image: "https://cryptocrimson.com/wp-content/uploads/2018/09/Stellar-XLM-Price-Resilience.png",
)

puts "Modedas cadastradas com sucesso!!!"
puts "----------------------------------------------------------"
