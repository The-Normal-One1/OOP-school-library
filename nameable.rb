class Nameable
  def correct_name
    raise NotImplimentedError, "#{self.class} has not implimented method '#{__method__}'"
  end
end
