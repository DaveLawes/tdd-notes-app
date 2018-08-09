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
    it "shows all three titles on separate lines" do
      notes.add_title_and_body("Title", "Body")
      notes.add_title_and_body("Title1", "Body1")
      notes.add_title_and_body("Title2", "Body2")
      expect(notes.show_all_titles).to eq "Title,\nTitle1,\nTitle2"
    end
  end
end
