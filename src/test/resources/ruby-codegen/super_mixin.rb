require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.SuperMixin
module RubyCodegen
  module SuperMixin
    # @return [void]
    def super_mixin_method
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:superMixinMethod))).invoke(@j_del)
    end
  end
  class SuperMixinImpl
    include SuperMixin
    # @private
    # @param j_del [::RubyCodegen::SuperMixin] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::SuperMixin] the underlying java delegate
    def j_del
      @j_del
    end
  end
end
