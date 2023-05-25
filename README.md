# Template for C++ project based on CMake & Conan & Vscode
## Usage
### Conan Profiles
It's recommand to generate conan profiles for your environment.
```shell
# generate conan profile
# file will be saved in ~/.conan2/profiles
conan profile detect --name=xxx
```
profiles configuration will effect the conan toolchain file, which directly effects the build command.

The config directory saves some conan profiles that are tested on my computer:
- `gcc` on Ubuntu 22.04
- `clang` on Ubuntu 22.04
- `clang` on Windows 11
### CMake Presets
Conan will generate a preset that can be used by CMake. In some cases, you need to modify the preset to fit your environment.

This preset runs well when using gcc, but when using clang or other compilers, you may need to modify the preset.
(because `c++` links to g++ by default on Ubuntu, and I don't know why the toolchain file didn't specify the compiler)

When using clang or other compilers, you may need to modify the preset. There are some presets in CMakeUserPresets.json for reference:
- `clang-16-debug`
- `clang-16-release`
- `clang-debug`
- `clang-release`

(differing clang and clang-16 is because clang download from LLVM website is named clang-16, but the one installed by apt is named clang)

### Build
```shell
# generate conan toolchain file
# xxx leads to the name of your conan profile
conan install . -pr=xxx --build=missing
```
Then, select the preset you want to use and build the project.
Do not forget to change the project name in the `CMakeLists.txt` file.

### Note
The template has a dependency `nlohmann_json`, which is used for testing. You can remove it if you don't need it.
