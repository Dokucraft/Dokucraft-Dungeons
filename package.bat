SET /p gameDir= < Tools\settings\game_directory.txt

python Tools\u4pak.py pack "%gameDir%\Dungeons\Content\Paks\~Dokucraft-Dungeons.pak" Dungeons -p