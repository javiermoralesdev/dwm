static const Block blocks[] = {
    //   Icon    Command                          Update Interval     Update Signal
    {"  ", "bash ~/.local/bin/version", 60, 0},
    {"  ", "checkupdates | wc -l", 1, 0},
    {"", "~/.local/bin/volume", 1, 0},
    {"", "date +'󰃭 %d/%m/%Y   %H:%M%p'", 1, 0},
};

// Sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
