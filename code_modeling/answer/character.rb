require_relative 'gender'
require_relative 'job'
require_relative 'element'
require_relative 'equipment'

class Character
  def initialize(gender:, job:,  element:, equipment:)
    acquire_ability(gender, job, element, equipment)
  end

  def attack
    0
  end

  def defense
    0
  end

  private

  def acquire_ability(gender, job, element, equipment)
    extend ability_for(:gender, gender)
    extend ability_for(:job, job)
    extend ability_for(:element, element)
    extend ability_for(:equipment, equipment)
  end

  def ability_for(kind, ability)
    Object.const_get("#{kind.capitalize}::#{ability.capitalize}")
  end
end
