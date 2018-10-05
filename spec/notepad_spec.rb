require 'notepad'
describe Notepad do
  it "should allow the user to view the titles" do
    notepad = Notepad.new
    notepad.add("title", "body")
    expect(notepad.list).to eq("title")
  end

  it "should allow the user to view titles of multiple notes" do
    notepad = Notepad.new
    notepad.add("title", "body")
    notepad.add("hello", "goodbye")
    expect(notepad.list).to eq("title\nhello")
  end

  it "should show the title and body of a selected note" do
    notepad = Notepad.new
    notepad.add("title", "body")
    expect(notepad.show("title")).to eq "title\nbody"
  end

  it "should show the title and body of a selected note from the notepad" do
    notepad = Notepad.new
    notepad.add("title", "body")
    notepad.add("hello", "goodbye")
    expect(notepad.show(1)).to eq "hello\ngoodbye"
  end

end
