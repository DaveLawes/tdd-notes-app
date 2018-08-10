class NoteBook

  attr_reader   :all_saved_notes

  def initialize
     @all_saved_notes = []
  end

  def add_new_note(title, body)
     @all_saved_notes << { title: title, body: body }
  end

  def show_all_titles
    arr = []
    raise "No notes in notebook!" unless @all_saved_notes != nil
    @all_saved_notes.each_with_index do |note, idx|
      arr << "#{ idx + 1 }: #{ note[:title] }"
    end
    arr.join(", ")
  end

  def show_specific_note(idx)
    "#{all_saved_notes[idx][:title]}: #{all_saved_notes[idx][:body]}"
  end

end
