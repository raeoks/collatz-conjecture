module CollatzConjecture
  class Solver
    def initialize(initial, final)
      unless initial >= 0 || final >= 0
        raise ArgumentError.new(
                  "initial (#{initial}) and final (#{final}) values" +
                      " can't be negative")
      end
      unless initial >= 0
        raise ArgumentError.new(
                  "initial (#{initial}) value can't be negative")
      end
      unless final >= 0
        raise ArgumentError.new(
                  "final (#{final}) value can't be negative")
      end
      @initial = initial
      @final   = final
    end
  end
end
