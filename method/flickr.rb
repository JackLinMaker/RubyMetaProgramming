class Flickr
  def request(method, *params)
    response = XmlSimple.xml_in(http_get(request_url(method, params)),
                                {'ForceArray' => false })
    
    raise response['err']['msg'] if response['stat'] != 'ok'
    response
  end
  
  def method_missing
    request(method_id.id2name.gsub(/_/, '.'), params[0])
  end
end