require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.RefedInterface2
module Testmodel
  module RefedInterface2
    # @return [String]
    def get_string
      @j_del.getString
    end
    # @param [String] str
    # return [self]
    def set_string(str)
      if str.class == String
        @j_del.setString(str)
        return self
      end
      raise ArgumentError, "Invalid argument str=#{str} when calling set_string(str)"
    end
  end
  class RefedInterface2Impl
    include RefedInterface2
    # @private
    # @param j_del [::Testmodel::RefedInterface2] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::RefedInterface2] the underlying java delegate
    def j_del
      @j_del
    end
  end
end
