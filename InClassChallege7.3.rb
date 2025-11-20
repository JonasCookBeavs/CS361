class DataManager
  def initialize(n)
    @network_connection = 
  end

  def send_request(r)
    @network_connection.send(r)  # Send some data
  end

  def recv_response()
    @network_connection.recv()  # Return the received data
  end
end

# TODO: Make DataManager behave differently if testing

if testing
    dm = DataManager.new(MockNetConnection.new("example.com"))
else
    dm = DataManager.new(NetConnection.new("example.com"))
end

class MockNetworkConnection
  def initialize(d)
    @domain = d
  end

  def send(r)
    puts r
  end

  def recv()
    puts "Response Received"
  end
end

dm.send_request("REQUEST: good things")
good_things = dm.recv_response()