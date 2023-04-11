require './base_decorator'

class TrimmerDecorator < Decorator


    def correct_name
        if @nameable.correct_name.length < 10
            @nameable.correct_name
        else
           "#{@nameable.correct_name[0..9]}..." 
        end
    end
end