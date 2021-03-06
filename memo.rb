class Memo < Post

  def read_from_console
    puts "New note (all, you write till line \"end\"):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
     time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S ")} \n\r \n\t"

     return @text.unshift(time_string)
  end
end

