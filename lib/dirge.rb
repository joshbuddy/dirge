module Kernel
  def __DIR__(called_from = nil)
    called_from ||= caller.first
    caller_path = called_from[/(.*?(?=:\d))/, 1]
    caller_path = '.' if caller_path == ''
    File.expand_path(File.dirname(caller_path))
  end

  def require_relative(path)
    require File.join(__DIR__(caller.first), path)
  end

end

class Module
  def self.autoload_relative(name, filename)
    autoload name, File.join(__DIR__(caller.first), filename)
  end
end

class String
  def ~@
    File.expand_path(File.join(__DIR__(caller.first), self))
  end
end