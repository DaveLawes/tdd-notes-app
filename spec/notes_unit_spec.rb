require 'notes_app'

describe NoteBook do
  let(:notebook) {NoteBook.new}

  describe "Unit tests: " do
    describe "#initialize" do
      it "creates empty array" do
        expect(notebook.all_saved_notes).to eq []
      end
    end

    describe "#add_new_note" do
       it "saves arguments" do
         notebook.add_new_note("Title", "Body")
         expect(notebook.all_saved_notes).to eq [{title: "Title", body: "Body"}]
       end
    end

    describe "#show_all_titles" do
      before do
        notebook.add_new_note("Title", "Body")
        notebook.add_new_note("Title2", "Body2")
      end

      it "shows all two titles in a pretty way" do
        expect(notebook.show_all_titles).to eq "1: Title, 2: Title2"
      end
    end

    describe "#show_specific_note(idx)" do
      before do
        notebook.add_new_note("Title", "Body")
        notebook.add_new_note("Title2", "Body2")
      end

      it "displays title and body in a pretty way" do
         expect(notebook.show_specific_note(0)).to eq "Title: Body"
      end
    end
  end
end
