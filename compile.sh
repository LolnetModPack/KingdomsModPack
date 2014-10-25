array=( $(< BuildNumber) )
sum=$( IFS=+; echo "${array[*]}" | bc )
echo "$(($sum+1))" > BuildNumber

java -cp LolnetLauncher.jar com.skcraft.launcher.builder.PackageBuilder --version "1.2.2" --manifest-dest "dist/manifest.json" --objects-dest "dist/objects" --files "src" --config "modpack.json" --objects-url "https://lolnet.co.nz/modpack/objects" --version-file "version.json" --libs-url "https://lolnet.co.nz/modpack/libraries"


java -cp SKCraftLauncher.jar com.skcraft.launcher.builder.PackageBuilder --version "1.0" --manifest-dest "dist/manifest.json" --objects-dest "dist/objects" --files "src" --config "modpack.json" --objects-url "https://www.lolnet.co.nz/modpack/objects" --version-file "version.json" --libs-url "https://www.lolnet.co.nz/modpack/libraries"
cp -r /var/www/modpack/Setup/Kingdoms/dist/objects/ /var/www/modpack/
cp -r /var/www/modpack/Setup/Kingdoms/dist/manifest.json /var/www/modpack/kingdomsmanifest.json
rm -r /var/www/modpack/Setup/Kingdoms/dist/

cp CompletedTemplate.json ../../public/Kingdoms.json 
rm CompletedTemplate.json