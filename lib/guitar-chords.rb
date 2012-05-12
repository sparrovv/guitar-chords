require_relative "guitar-chords/version"
require_relative "guitar-chords/application"
require_relative "guitar-chords/chord"

require 'fretboard_drawer'
require 'optparse'

module Guitar
  module Chords

      #TODO: move to some other file
      CHORDS = {
        "A" => {2 => {2 => "4"}, 3 => {2 => "3"}, 4 => {2=>"2"}},
        "a" => {2 => {1 => "1"}, 3 => {2 => "3"}, 4 => {2=>"2"}},
        "C" => {2 => {1 => "1"}, 4 => {2 => "2"}, 5 => {3=>"3"}},
        "D" => {1 => {2 => "2"}, 2 => {3 => "3"}, 3 => {2=>"1"}},
        "d" => {1 => {1 => "1"}, 2 => {3 => "3"}, 3 => {2=>"2"}},
        "E" => {3 => {1 => "1"}, 4 => {2 => "3"}, 5 => {2=>"2"}},
        "e" => {4 => {2 => "3"}, 5 => {2=>"2"}},
        "G" => {1 => {3 => "4"}, 2 => {3 => "3"}, 5 => {2=>"1"}, 6 => {3=>"2"}}
      }

    def self.list
      CHORDS.keys.join(',')
    end

  end
end
