#!/bin/bash
# This script installs and enables/starts a systemd service
export NAME=JupyterLab

# Create service file
cat >/etc/systemd/system/${NAME}.service <<EOF
[Unit]
Description=${NAME}

[Service]
Type=simple
ExecStart=/usr/bin/env jupyter lab --ip=0.0.0.0 --port 8888 --LabApp.token='' --notebook-dir=/root/jupyter-notebooks

WorkingDirectory=/root
User=root
Group=root

Restart=on-failure
RestartSec=5s

[Install]
WantedBy=multi-user.target
EOF

# Enable and start service
systemctl enable --now ${NAME}
