# Mixmax Slash Command integration for Instagram

Installation and initialization

<ol>
<li>Git clone https://github.com/andrewkomarov/mixmax-test</li>
<li>$ bundle install</li>
<li>$ thin start --ssl</li>
<li>Register an Instagram application in order to operate with their API platform (https://www.instagram.com/developer)</li>
<li>Configure Redirect URI for OAuth2 authentication: https://myserver:3000/authenticate</li>
<li>Add Client ID, CLient Secret and Callback URI to the application configuration file (app/models/global_constants.rb)</li>
<li>Visit https://myserver:3000, click on connect with Instagram to authenticate new client and retrieve an auth token</li>
<li>In Mixmax dashboard create a new Slash Command /Instagram; Suggestions API URL: https://myserver:3000/typehead; Resolver API URL: https://myserver:3000/resolver 
<li>Use Slash Command in Message Body e.g. "/instagram san francisco" to retrive a list of suggested places with appropriate photos</li>
</ol>

The result should look like this:
<br/></br>
<img src="https://goo.gl/ZNDCQG" />

