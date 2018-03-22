module Goonet
  class Base < ActiveRecord::Base
    #   対応する抽象テーブルは設定しない（必ず継承させる）
    #
    databases = YAML.load(ERB.new(File.read('config/goonet/database.yml')).result)
    establish_connection(databases[Rails.env])
    self.abstract_class = true
  end
end
