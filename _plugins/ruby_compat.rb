# Compatibility shim for running the GitHub Pages/Jekyll 3 stack on newer Ruby.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
