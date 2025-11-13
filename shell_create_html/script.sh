#!/bin/bash
python3 - <<EOF
html_content = "<html><body><h1>Hello from Torque!</h1></body></html>"
with open("/tmp/index.html", "w") as f:
    f.write(html_content)
EOF
