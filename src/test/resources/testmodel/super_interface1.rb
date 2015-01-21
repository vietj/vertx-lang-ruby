require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.SuperInterface1
module Testmodel
  #  @author <a href="http://tfox.org">Tim Fox</a>
  class SuperInterface1
    # @private
    # @param j_del [::Testmodel::SuperInterface1] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::SuperInterface1] the underlying java delegate
    def j_del
      @j_del
    end
    # @param [Fixnum] b
    # @param [Fixnum] s
    # @param [Fixnum] i
    # @param [Fixnum] l
    # @param [Float] f
    # @param [Float] d
    # @param [true,false] bool
    # @param [Fixnum] ch
    # @param [String] str
    # return [void]
    def super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)
      if b.class == Fixnum
        if s.class == Fixnum
          if i.class == Fixnum
            if l.class == Fixnum
              if f.class == Float
                if d.class == Float
                  if bool.class == TrueClass || bool.class == FalseClass
                    if ch.class == Fixnum
                      if str.class == String
                        return @j_del.superMethodWithBasicParams(::Vertx::Util::Utils.to_byte(b),::Vertx::Util::Utils.to_short(s),i,l,::Vertx::Util::Utils.to_float(f),::Vertx::Util::Utils.to_double(d),bool,ch,str)
                      end
                      raise ArgumentError, "Invalid argument str=#{str} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                    end
                    raise ArgumentError, "Invalid argument ch=#{ch} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                  end
                  raise ArgumentError, "Invalid argument bool=#{bool} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
                end
                raise ArgumentError, "Invalid argument d=#{d} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
              end
              raise ArgumentError, "Invalid argument f=#{f} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
            end
            raise ArgumentError, "Invalid argument l=#{l} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
          end
          raise ArgumentError, "Invalid argument i=#{i} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
        end
        raise ArgumentError, "Invalid argument s=#{s} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
      end
      raise ArgumentError, "Invalid argument b=#{b} when calling super_method_with_basic_params(b,s,i,l,f,d,bool,ch,str)"
    end
  end
end
