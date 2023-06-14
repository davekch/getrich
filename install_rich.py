from rich.traceback import install
import os

if not os.environ.get("RICH_DISABLE_TRACEBACKS"):
    install(show_locals=os.environ.get("RICH_SHOW_LOCALS"))

