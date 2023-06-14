#!/usr/bin/env bash
set -o errexit

echo "pip install rich"
echo ""
pip install rich
echo ""

echo "install rich.traceback in environment"
echo ""
cat "$(dirname "$(readlink -f $0)")/install_rich.py" >> $(python -c 'import sysconfig; print(sysconfig.get_paths()["purelib"])')/sitecustomize.py

echo "Installed rich tracebacks in the current python environment"
echo "To show locals in tracebacks, set RICH_SHOW_LOCALS"

