class Person 
    # name not overwritten: use attr_reader
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end
    # happiness conditions
    # if happiness>10 = no change
    # if happiness < 0 = no change
    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end
    
    # hygiene
    def hygiene=(num)
        if  num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else 
            @hygiene = num
      end
    end
    # happy
    # if happiness > 7 return true, else return false
    # ternary operator happiness > 7 ? true :fale
    def happy?
        self.happiness > 7 ? true :false
    end
    # clean
    def clean?
        self.hygiene > 7 ? true : false
    end
    # get paid
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    # take_bath
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    # work_out
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    # def call_friend
    # call happier: happiness + 3 points
    # make friend happier: friend.happiness
    # return string
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    # start_conver..
    # person, topic: start convo with ? person(friend) , topic
    # loop through convo (if, else statement)
    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist' 
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
             'blah blah sun blah rain'
        else 
             'blah blah blah blah blah' 
        end
    end

end   