# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :happiness, :name, :hygiene

  @@bank_account = 25
  @@happiness = 8
  @@hygiene = 8

  def initialize(name)
    @name = name
    @bank_account = @@bank_account
    @happiness = @@happiness
    @hygiene = @@hygiene
  end

  def happiness=(points)
    @happiness = points
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      else
        @happiness
    end
  end

  def hygiene=(points)
    @hygiene = points
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      else
        @hygiene
    end
  end


  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene= (@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness= (@happiness + 2)
    self.hygiene= (@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness= (@happiness + 3)
    if friend.class == Person
      friend.happiness= (friend.happiness + 3)
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness= (@happiness - 2)
      friend.happiness= (friend.happiness - 2)
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness= (@happiness + 1)
      friend.happiness= (friend.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
