require './lib/notes_app.rb'

describe Notes do
  let(:notes) {Notes.new}
  # before do
  #   @notes = Notes.new
  #   @notes.add_title_and_body("Title", "Body")
  # end
  #
  describe "#initialize" do
    it "creates empty array" do
      expect(notes.all_saved_notes).to eq []
    end
  end

  describe "#add_title_and_body" do
     it "saves arguments" do
       notes.add_title_and_body("Title", "Body")
       expect(notes.all_saved_notes).to eq [{title: "Title", body: "Body"}]
     end
  end

  describe "#show_all_titles" do
    it "shows all three titles in a pretty way" do
      notes.add_title_and_body("Title", "Body")
      notes.add_title_and_body("Title1", "Body1")
      notes.add_title_and_body("Title2", "Body2")
      expect(notes.show_all_titles).to eq "1: Title, 2: Title1, 3: Title2"
    end
  end

  describe "#show_specific_note" do
    it "displays title and body in a pretty way" do
       notes.add_title_and_body("Title", "Body")
       expect(notes.show_specific_note(0)).to eq "Title: Body"
    end
  end
end
