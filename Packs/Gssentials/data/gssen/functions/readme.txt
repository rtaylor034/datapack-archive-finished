GENERAL USE INFO

marker at freeBlock location tagged 'gssen-freeblock'

'obj' means any nbt object (ex: '{val:5}' NOT '5')
'any' means any data (ex: '5', "test", '{val:5}')

a 'space vector' is an array of 3 doubles specifically meant to represent a vector in 3D xyz coordinates, indicative of use with 'Pos' or 'Motion' entity nbt tags.

a 'rotation vector' is an array of 2 floats specifically meant to represent the entity 'Rotation' tag.

an 'ifloat' is an object that represents a float, that is compatible with sub-ifloat functions
ifloats have the form {digits: int[], exponent: byte, sign: (-1 | 1), raw: int}

- DEV ------
gssenCore is now split into component packs:
Gssentials - this pack, provides many helpful functions, pure library
PlayerData - stores consistent playerdata
SlimeCore - easily add and manage dependencies. MUST HAVE 0 DEPENDENCIES ITSELF

float mult
long multiply sig digits, only store the 9 left-most digits, but keep track of how many digits there are
add exponents
apply exponent

TODO:
make ifloat math using hardcoded trees (and then implement it in vector math)
make vector add and other vector math functions take any amount of inputs instead of just <a> and <b> (2D array)