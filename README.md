script that does `pip install rich` and puts

```python
from rich.traceback import install
import os

if not os.environ.get("RICH_DISABLE_TRACEBACKS"):
    install(show_locals=os.environ.get("RICH_SHOW_LOCALS"))
```

into `lib/python3.XX/site-packages/sitecustomize.py`.

This enables [rich tracebacks](https://rich.readthedocs.io/en/stable/traceback.html#traceback-handler) globally in the current python environment.

### install this script

```bash
git clone https://github.com/davekch/getrich.git
ln -s /path/to/getrich/getrich.sh ~/.local/bin/getrich
```

### use

To install rich tracebacks in a python virtual environment, activate it and type `getrich`.
This needs to be done only once.

To print locals, set `RICH_SHOW_LOCALS=1`.
To temporarily disable rich tracebacks, set `RICH_DISABLE_TRACEBACKS=1`.

