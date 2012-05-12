module Guitar
  module Chords
    class Chord

      def initialize(chord)
        @chord = chord
      end

      def exists?
        !!CHORDS[@chord]
      end

      def to_draw
        CHORDS[@chord]
      end
    end
  end
end
