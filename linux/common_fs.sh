function rmdir {
    _dir_path="${1}"
    rm --recursive --force "${_dir_path}"
}
