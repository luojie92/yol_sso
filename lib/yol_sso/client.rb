require "monitor"
require "redis"
require 'digest/md5'
module YolSso 
  class Client

    include Connection::Base
    include Connection::Message
    include Connection::User
    
    attr_accessor :host, :agentid, :redis

    def initialize(options = {})
      @host = options[:host] || YolSso.configuration.host
      @agentid = options[:agentid] || YolSso.configuration.agentid
      @redis  = options[:redis]  || YolSso.configuration.redis
    end
  end
end