module Gender
  module Base
    def man?
      singleton_class.include?(Gender::Man)
    end

    def woman?
      singleton_class.include?(Gender::Woman)
    end
  end

  module Man
    include Base

    def attack
      super + 5
    end
  end

  module Woman
    include Base

    def defense
      super + 5
    end
  end
end
