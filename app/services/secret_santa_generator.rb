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
end
