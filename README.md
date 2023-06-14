script that does `pip install rich` and puts

```python
from rich.traceback import install
import os

install(show_locals=os.environ.get("RICH_SHOW_LOCALS"))
```

into `lib/python3.XX/site-packages/sitecustomize.py`.

This enables [rich tracebacks](https://rich.readthedocs.io/en/stable/traceback.html#traceback-handler) globally in the current python environment. To print locals, set `RICH_SHOW_LOCALS=1`.

### install

```bash
git clone https://github.com/davekch/getrich.git
ln -s /path/to/getrich/getrich.sh ~/.local/bin/getrich
```

### use

Activate your python virtual environment and type `getrich`.

