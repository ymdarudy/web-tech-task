require 'cgi'
cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['give']

  "<html>
    <body>
      <p>売ったゴーヤの長さ、重さと相手の情報は下記になります</p>
      #{get}
    </body>
  </html>"
}
