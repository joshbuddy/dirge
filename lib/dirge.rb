module Kernel
  def __DIR_REL__(called_from = nil)
    called_from ||= caller.first
    caller_path = called_from[/(.*?(?=:\d+(:|$)))/, 1]
    caller_path = '.' if caller_path == ''
    File.expand_path(File.dirname(caller_path))
  end

  unless method_defined?(:__DIR__)
    alias_method :__DIR__, :__DIR_REL__
  end

  unless method_defined?(:require_relative)
    def require_relative(path)
      require File.join(__DIR_REL__(caller.first), path)
    end
  end
end

class Module
  unless method_defined?(:autoload_relative)
    def autoload_relative(name, filename)
      autoload name, File.join(__DIR_REL__(caller.first), filename)
    end
  end
end

class String
  unless method_defined?(:~@)
    def ~@
      File.expand_path(File.join(__DIR_REL__(caller.first), self))
    end
  end
end