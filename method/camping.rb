if conf.rc and File.exists?(conf.rc)
  YAML.load_file(conf.rc).each do |k, v|
    conf.send("#{k}=", v)
  end
end