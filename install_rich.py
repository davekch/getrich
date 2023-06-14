from rich.traceback import install
import os

install(show_locals=os.environ.get("RICH_SHOW_LOCALS"))

