class Notes

  attr_reader :all_saved_notes

  def initialize
     @all_saved_notes = []
  end

  def add_title_and_body(title, body)
     @all_saved_notes << { title: title, body: body }
  end

  def show_all_titles
    arr = []
    @all_saved_notes.each_with_index do |note, idx|
      arr << "#{ idx + 1 }: #{ note[:title] }"
    end
    arr.join(", ")
  end

  def show_specific_note(idx)
    "#{all_saved_notes[idx][:title]}: #{all_saved_notes[idx][:body]}"
  end

end
