require 'cgi'
cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['bad']

  "<html>
    <body>
      <p>品質の悪いゴーヤの長さ、重さと価格の情報は下記になります</p>
      #{get}
    </body>
  </html>"
}
