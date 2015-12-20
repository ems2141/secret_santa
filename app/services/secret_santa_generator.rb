class SecretSantaGenerator
  def initialize(people)
    @people = people
  end

  def create_list
    total = @people.count

    count = 0
    result = []

    while count < total
      if count < total-1
        result << {@people[count] => @people[count + 1]}
      else
        result << {@people[count] => @people[0]}
      end
      count +=1
    end

    result
  end


  def create_random_list
    total = @people.count

    count = 0
    result = []

    while count < total
      if result.blank?
        person1 = @people.sample
        @people.delete(person1)
        person2 = @people.sample
        @people.delete(person2)
        result << {person1 => person2}
      else
        person1 = result.last.values.first

        if @people.present?
          person2 = @people.sample
          @people.delete(person2)
          result << {person1 => person2}
        else
          person2 = result.first.keys.first
          result << {person1 => person2}
        end
      end

      count += 1

    end

    result
  end
end
