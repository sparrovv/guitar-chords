module Guitar
  module Chords
    class Application

      def initialize(argv)
        @params, @actions = parse_options(argv)
      end

      def run
        if @params[:list_chords]
          puts "Available chords:"
          puts Guitar::Chord.list
          exit 0
        end

        chord = Guitar::Chords::Chord.new(@params[:chord])

        if chord.exists?
          FretboardDrawer::Config.number_of_frets = 6
          FretboardDrawer.draw chord.to_draw
        else
          puts "No such chord"
          puts "Available chords:"
          puts Guitar::Chords.list
          puts "guitar-chords -c <chord>"
        end
      end

      def parse_options(argv)
        params = {}
        parser = OptionParser.new

        parser.on("-c chord", "--chord chord", "Define chord") do |c|
          params[:chord] = c
        end

        parser.on("-l", "--list", "List chords") do
          params[:list_chords] = true
        end

        commands = parser.parse!(argv)

        [params, commands]
      end
    end
  end
end
