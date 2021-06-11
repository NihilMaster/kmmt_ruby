File.open("s16/files/test.txt", "w")
# Created file
sleep 5
File.rename("s16/files/test.txt", "s16/files/testMod.txt")
# Modified file
sleep 5
File.delete("s16/files/testMod.txt")
# Deleted file
