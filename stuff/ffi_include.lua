
local fio = require("fio")
local ffi = require("ffi")

function ffi_include(filename)
        local path = fio.cwd()
        path = fio.pathjoin(path, filename)

        local file, err = fio.open(path, "O_RDONLY")
        if file == nil then
            error(("Can not open file '%s': %s"):format(path, tostring(err)))
        end

        local ok, content = pcall(file.read, file)
        file:close()

        if not ok then
            error(content)
        end

        return ffi.cdef(content)
end

return {
    ffi_include = ffi_include
}
