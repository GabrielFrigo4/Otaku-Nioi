if(room = room_tutorial)
{
	var _file = file_text_open_write(working_directory + "\datavar.txt");
	file_text_write_real(_file,1);
	file_text_close(_file);
}