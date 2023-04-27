# Sample GWCA project

Skeleton for setting up a GWCA based project without Visual Studio and with Git Bash on Windows.

## Getting started

1. Clone the project with all git submodules `git clone --recursive https://github.com/NickGw99/gwca-skeleton.git`
2. Make sure you have all the [dependencies](#dependencies) installed.
3. Follow the instructions to [build and run](#build-and-run).
4. Follow the instructions to [develop](#developing).

## Dependencies

1. Windows
2. Git Bash
3. AutoIt
4. MSBuild (compiler toolchain that comes with Visual Studio, make sure you have the C++ toolchain).

## Build and run

1. Open the project with Git Bash
2. Run `./scripts/setup.sh`. This executes CMake's `configure` and CMake's `build` to create our target executables and DLL's.
3. Copy `Inject.au3` into `build/Debug`. It can be used to inject a DLL into Guild Wars processes.
4. Execute `build/Debug/Inject.au3` (requires AutoIt to be installed). Select the DLL to be injected (eg `PacketLogger.dll`).

## Developing

1. Open in Visual Studio
2. Install the C/C++ extension or the extension pack. Disable cmake auto-configure.
3. Use .vscode/settings.json to update the #include path if you add extra dependencies.

## What's missing?

1. Debugging.
2. Hot reloading / automated development processes.
3. Everything else.
