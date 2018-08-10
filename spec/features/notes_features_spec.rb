require 'notes_app'

describe NoteBook do
  it 'User can add a note with a title and a body' do
    given_there_is_a_new_notebook
    i_can_add_new_note
    then_the_note_should_be_able_to_view
  end

  it 'User can see a list of all note titles' do
    given_there_is_a_new_notebook
    i_can_add_multiple_new_notes
    then_see_a_list_of_all_note_titles
  end

  it 'User can pick a note and see its title and body' do
    given_there_is_a_new_notebook
    i_can_add_multiple_new_notes
    then_pick_note1_and_see_it
  end

end

def given_there_is_a_new_notebook
  @notebook = NoteBook.new
end

def i_can_add_new_note
  @notebook.add_new_note("Title", "Body")
end

def then_the_note_should_be_able_to_view
  expect(@notebook.all_saved_notes).to eq [{:title => "Title", :body => "Body"}]
end

def i_can_add_multiple_new_notes
  i_can_add_new_note
  i_can_add_new_note
end

def then_see_a_list_of_all_note_titles
  expect(@notebook.show_all_titles).to eq "1: Title, 2: Title"
end

def then_pick_note1_and_see_it
  expect(@notebook.show_specific_note(0)).to eq "Title: Body"
end
