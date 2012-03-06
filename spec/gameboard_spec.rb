require 'gameboard'

describe GameBoard do
  before(:all) do
    @gb = GameBoard.new
    @gb.set_locations_cells([3, 4, 5])
  end # before end

  context " GameBoard object has certain methods" do
    it "should respond to check_yourself" do
      @gb.respond_to?(:check_yourself).should be_true
    end
    it "should respond to set_locations_cells" do
      @gb.respond_to?( :set_locations_cells).should be_true
    end # it end
  end # context end

  context "when guessing locations" do
    it "should puts 'Hit' to screen and remove target" do
      @gb.check_yourself(3)
      @gb.instance_variable_get(:@locations).should eql [4, 5]
      @gb.check_yourself(4)
    end # it end
    it "should print to screen Miss if target is missed" do
      @gb.check_yourself(7).should == nil
    end
    it "should report 'End' to screen and return 'kill' when last target hit" do
      @gb.check_yourself(5).should == 'kill'
    end
  end  # context end


  context "Just testing a automated series of tests" do
    5.times do |number|
      it "should just number the tests in order #{number}" do
        (number * 5).should == (number * 5)
      end
    end
  end
end # describe GameBoard end

