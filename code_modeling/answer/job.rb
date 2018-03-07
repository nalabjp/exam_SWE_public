module Job
  module Base
    def fighter?
      singleton_class.include?(Job::Fighter)
    end

    def magician?
      singleton_class.include?(Job::Magician)
    end

    def martial?
      singleton_class.include?(Job::Martial)
    end
  end

  module Fighter
    include Base

    def skill
      return 'ギガスラッシュ' if man?
      return 'ビッグバン' if woman?
    end
  end

  module Magician
    include Base

    def skill
      return 'ベギラマ' if man?
      return 'メラミ' if woman?
    end
  end

  module Martial
    include Base

    def skill
       return 'ブースト' if man?
       return 'カウンタ' if woman?
    end
  end
end
