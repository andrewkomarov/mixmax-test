module GlobalConstants

  # Instagram OAuth2 credentials
  # --------------------------------------------------------------------
  CLIENT_ID = '5dd10578a9eb46fe9e192ec65ee286dc'
  CLIENT_SECRET = '2e7785a4d7bb4a329182b70ce2442de9'  
  CALLBACK_URI = 'https://komarov.kiev.ua:3000/authenticate'
  INSTAGRAM_TOKEN_FILE = "#{Rails.root}/tmp/i_token.txt"

end
