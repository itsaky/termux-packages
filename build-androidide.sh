#!/bin/bash

set -eu

print_and_exec() {
	echo "$@"
	echo ""
	echo ""
	exec $@
}


if [[ -z ${1+x} ]]; then
	echo "Usage: $0 [arch] where arch is one of [aarch64, arm, x86_64]"
	exit 1
else
	arch="$1"

	case "$arch" in
		aarch64|arm|x86_64)
		;;
		*)
		echo "Unsupported arch: $arch"
		exit 1
		;;
	esac
fi

script_dir=$(dirname $(realpath $0))
build_package="$script_dir/build-package.sh"
packages_txt="$script_dir/packages.txt"

if [[ ! -f "$build_package" ]]; then
	echo "$build_package script does not exist."
	exit 1
fi

if [[ ! -f "$packages_txt" ]]; then
	echo "$packages_txt file does not exist."
	exit 1
fi

echo "Executing:"

print_and_exec "$build_package" -a $arch -o "output-$arch" -I $(cat "$packages_txt")
