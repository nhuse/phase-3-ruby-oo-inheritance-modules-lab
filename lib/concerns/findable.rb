module Findable
    def find_by_name(name)
        collection = []
        Artist.class_variable_get(:@@artists).map do |artist|
            collection << artist
        end
        Song.class_variable_get(:@@songs).map do |song|
            collection << song
        end
        collection.detect{|a| a.name == name}
    end
end