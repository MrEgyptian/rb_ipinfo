#!/bin/env ruby
require 'httparty'
def myip()
 ip = HTTParty.get('http://ipapi.co/json/')
 return ip
 end
def get_ip_info(ip)
 puts ip
 ip = HTTParty.get('http://ipapi.co/'+ip+'/json/')
 puts ip
 return ip
 end
if ARGV.length > 0
 get_ip_info(ARGV[0])
else
 puts myip()
end
