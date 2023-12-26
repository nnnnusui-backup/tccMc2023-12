out_path="mods-server.txt"
src_dir="./data/mods"

echo "gen to[$out_path] ..."
ls -1 "$src_dir" > "$out_path"

echo "done."
