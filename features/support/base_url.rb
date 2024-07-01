module Users 
    include HTTParty
    base_uri 'https://api-desafio-qa.onrender.com'
    format :json
    headers 'Content-Type': 'application/json','accept': 'application/json'
end

