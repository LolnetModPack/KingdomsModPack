#java -cp SKCraftLauncher.jar com.skcraft.launcher.builder.PackageBuilder --version "1.0" --manifest-dest "dist/manifest.json" --objects-dest "dist/objects" --files "src" --config "modpack.json" --objects-url "http://modpacks-lolnet.rhcloud.com/modpack/objects" --version-file "version.json" --libs-url "http://modpacks-lolnet.rhcloud.com/modpack/libraries"

java -cp SKCraftLauncher.jar com.skcraft.launcher.builder.PackageBuilder --version "1.0" --manifest-dest "dist/manifest.json" --objects-dest "dist/objects" --files "src" --config "modpack.json" --objects-url "https://www.lolnet.co.nz/modpack/objects" --version-file "version.json" --libs-url "https://www.lolnet.co.nz/modpack/libraries"
cp -r /var/www/modpack/Setup/Kingdoms/dist/objects/ /var/www/modpack/
cp -r /var/www/modpack/Setup/Kingdoms/dist/manifest.json /var/www/modpack/kingdomsmanifest.json
rm -r /var/www/modpack/Setup/Kingdoms/dist/