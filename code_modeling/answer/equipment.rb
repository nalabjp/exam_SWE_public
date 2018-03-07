module Equipment
  module Sord
    def attack
      bonus = fighter? ? 20 : 0
      super + 30 + bonus
    end

    def defense
      super + 30
    end
  end

  module Stick
    def attack
      bonus = magician? ? 20 : 0
      super + 30 + bonus
    end

    def defense
      super + 10
    end
  end

  module Glove
    def attack
      super + 20
    end

    def defense
      bonus = martial? ? 20 : 0
      super + 20 + bonus
    end
  end
end
