out_path="mods-client.txt"
src_dir="/mnt/c/_/game/minecraft/modrinth/profiles/1.20.1 TCC/mods"
tmp_dir="client-mods-tmp"

echo "rm tmp[$tmp_dir] ..."
rm -rf "$tmp_dir"

echo "cp from[$src_dir] ..."
cp -r "$src_dir" "$tmp_dir"

echo "gen to[$out_path] ..."
read_dir="$tmp_dir"
ls -1 "$read_dir" > "$out_path"

rm -rf "$tmp_dir"

echo "done."

