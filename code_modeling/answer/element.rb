module Element
  module Wind
    def attack
      bonus = martial? ? 20 : 0
      super + 5 + bonus
    end

    def defense
      super + 10
    end
  end

  module Water
    def attack
      super + 10
    end

    def defense
      bonus = fighter? ? 10 : 0
      super + 5 + bonus
    end
  end

  module Thunder
    def attack
      super + 15
    end

    def defense
      bonus = magician? ? 5 : 0
      super + 0 + bonus
    end
  end
end
