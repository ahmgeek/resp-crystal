require "crotest"
require "../src/resp"

REDIS_PORT = ENV.fetch("REDIS_PORT", "6379")
REDIS_HOST = ENV.fetch("REDIS_HOST", "0.0.0.0")

def info(c : Resp, section = "default")
  c.call("INFO", section).as String
end
