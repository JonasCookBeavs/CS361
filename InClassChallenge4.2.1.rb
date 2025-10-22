class FileEditor
  @file_name
  @data
  @file_pointer

  def initialize(file)
    @file_name = file
  end

  def editor_open_file()
    @file_pointer = api.open_file(@file_name)
  end

  def editor_read_data()
    @data = api.read_data(@file_pointer)
  end

  def editor_write_data()
    api.write_data(@file_pointer, @data)
  end

  def editor_close_file()
    api.close_file(@file_pointer)
  end
  