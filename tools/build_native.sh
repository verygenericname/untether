mkdir bin
rm bin/thread_shit
gcc thread_shit.c -o bin/thread_shit --std=c99
ldid -S bin/thread_shit

rm bin/testlol
gcc testlol.c -o bin/testlol --std=c99
ldid -S bin/testlol

rm bin/935csbypass
gcc 935csbypass.c -o bin/935csbypass --std=c99 -marm
ldid -S bin/935csbypass

rm bin/defines
gcc defines.c -o bin/defines --std=c99 -marm
ldid -S bin/defines

rm shc/bin/shellcode
gcc shc/shellcode.c -o shc/bin/shellcode --std=c99 -marm -ffreestanding -c -fPIC
#ldid -S shc/bin/shellcode

otool -t shc/bin/shellcode -X | cut -d " " -f 2- | tr -d "\n" | xxd -r -ps > shc/bin/shellcode.bin

rm bin/jit_all_the_things
gcc jit_all_the_things.c -o bin/jit_all_the_things --std=c99 -marm -fPIC
ldid -Sent.xml bin/jit_all_the_things