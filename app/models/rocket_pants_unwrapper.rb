class RocketPantsUnwrapper < ActiveRestClient::ProxyBase

  get %r{.*} do
    response = passthrough
      translate(response) do |body|
        body["response"]
      end
  end
end
