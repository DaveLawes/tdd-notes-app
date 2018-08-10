require 'notes_app'
require 'spec_helper'

describe 'User can create a new NoteBook' do
  it 'Initial creation' do
    user_creates_a_new_notebook
  end
end

def user_creates_a_new_notebook
  true
end
# describe NoteBook do
#   let(:notebook) {NoteBook.new}
#
#   describe "Feature tests: " do
#     it "User should be able to create new object of class NoteBook" do
#       expect(notebook.class.name).to eq "NoteBook"
#     end
#
#     it "User should be able to add a note with a title and a body" do
#       expect {notebook.add_new_note("Title", "Body")}.not_to raise_error
#     end
#
#     it "User should be able to add multiple notes" do
#       expect {notebook.add_new_note("Title2", "Body2")}.not_to raise_error
#     end
#
#     it "User should be able to see a list of all note titles" do
#       notebook.add_new_note("Title", "Body")
#       notebook.add_new_note("Title2", "Body2")
#       expect(notebook.show_all_titles).to eq "1: Title, 2: Title2"
#     end
#
#     it "User should be able to pick note 1 and see its title and body" do
#       notebook.add_new_note("Title", "Body")
#       notebook.add_new_note("Title2", "Body2")
#       expect(notebook.show_specific_note(1)).to eq "Title2: Body2"
#     end
#   end
# end
