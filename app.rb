require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443) # realizando um requisição para o site example
# para fazer chamadas https
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body) # Depois utilzou Nokogiri::HTLM para parsear o documento
p = doc.at('p')

10.times { print "=========" }
puts
puts p.content
10.times { print "=========" }