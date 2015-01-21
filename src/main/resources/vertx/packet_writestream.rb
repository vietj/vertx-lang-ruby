require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.PacketWritestream
module Vertx
  #  A {::Vertx::WriteStream} for sending packets to a {::Vertx::SocketAddress}.
  #  The stream  is called when the write fails.
  class PacketWritestream
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::PacketWritestream] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::PacketWritestream] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::PacketWritestream#set_write_queue_max_size}
    # @return [true,false]
    def write_queue_full
      @j_del.writeQueueFull
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [::Vertx::Buffer] data
    # return [self]
    def write(data)
      if data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, "Invalid argument data=#{data} when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # return [self]
    def set_write_queue_max_size(maxSize)
      if maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, "Invalid argument maxSize=#{maxSize} when calling set_write_queue_max_size(maxSize)"
    end
    # @param [Proc] handler
    # return [self]
    def drain_handler(&handler)
      if handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling drain_handler(handler)"
    end
  end
end
