package = 'stuff'

version = 'scm-1'

source  = {
    url    = 'git://github.com/tmonlibs/stuff.git';
}

description = {
    summary  = "Various useful Lua stuff";
    detailed = [[
    Various useful Lua functions which might be useful eventually
    ]];

    homepage = 'https://github.com/tmonlibs/stuff.git';
    maintainer = "Timur Safin <tsafin@tarantool.org>";
    license  = 'BSD2';
}

dependencies = {
    'lua >= 5.1';
}

build = {
    type = 'builtin';
    modules = {
        ['stuff'] = 'stuff/init.lua';
        ['stuff.ffi_include'] = 'stuff/ffi_include.lua';
    }
}
