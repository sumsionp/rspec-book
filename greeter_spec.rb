class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end

describe "RSpec Greeter" do
  it "should say 'Hello RSpec!' when it receives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet

    #
    # This syntax came straight out of the book
    #
    greeting.should == "Hello RSpec!"

    #
    # The following is different syntax I learned in the Rails course, but it
    # works as well
    #
    expect(greeting).to eq("Hello RSpec!")
  end
end
