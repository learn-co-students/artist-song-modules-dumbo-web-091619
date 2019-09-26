module Findable
    def find_by_name(name)
        self.all.find {|person| person.name == name}
    end
end