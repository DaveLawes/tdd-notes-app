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
    @all_saved_notes.each { |note| arr << note[:title] }
    arr.join(",\n")
  end

end
