require 'webrick'

server = WEBrick::HTTPServer.new({
  DocumentRoot: '.',
  CGIInterpreter: WEBrick::HTTPServlet::CGIHandler::Ruby,
  Port: '3000'
  })
%w[INT TERM].each do |signal|
  Signal.trap(signal) { server.shutdown }
end

# 課題用（TOPページ周辺）
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'exam.html.erb')
server.mount('/give_goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'give_goya.rb')
server.mount('/bad_goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'bad_goya.rb')

server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.start
