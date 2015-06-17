# encoding: US-ASCII

require "memory_buffer/memory_buffer"
require "memory_buffer/version"

module MemoryBuffer
  PACK_MIN = 152       #size after which performance of pack is better than the * operator 
  PACK_MAX = 545259518 #size after which pack completely fails

  def self.create_zero_buffer(size)
    return size >= PACK_MIN && size <= PACK_MAX ? [""].pack("a#{size}") : "\0" * size 
  end

  def self.create_quad_buffer
  	"\000\000\000\000\000\000\000\000"
  end

  def self.create_long_buffer
  	"\000\000\000\000"
  end

  def self.create_short_buffer
  	"\000\000"
  end
end
