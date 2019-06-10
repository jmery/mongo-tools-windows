$pkg_name="mongo-tools-windows"
$pkg_description="MongoDB Tools for Windows x64"
$pkg_origin="jmery"
$pkg_version="3.6.12"
$pkg_maintainer="Jeff Mery <jmery@chef.io>"
$pkg_license=@('Apache-2.0')
$pkg_source="https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-$pkg_version.zip"
$pkg_shasum="d7dcb936a17e2d548824339b5d6bde5687eb01c45e3e2be2956920eb9030e698"
$pkg_bin_dirs=@("bin")

function Invoke-Install {
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongoexport.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongodump.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongofiles.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongoimport.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongorestore.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongostat.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/mongotop.exe" $pkg_prefix/bin
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/mongodb-win32-x86_64-2008plus-ssl-$pkg_version/bin/bsondump.exe" $pkg_prefix/bin
}
