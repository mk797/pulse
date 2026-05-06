# pulse


pulse/
├── README.md                    # the front door
├── docs/
│   ├── architecture.md          # the design doc you'll write
│   ├── decisions/               # ADRs (Architecture Decision Records)
│   └── runbooks/                # operational docs
├── infra/
│   ├── terraform/               # all terraform modules
│   │   ├── network/
│   │   ├── gke/
│   │   └── iam/
│   └── helm/                    # helm charts for your apps
├── services/
│   ├── ingester/                # Go service: pulls GitHub firehose
│   └── processor/               # Go service: anomaly detection
├── k8s/
│   ├── strimzi/                 # Kafka on K8s manifests
│   ├── argocd/                  # GitOps configs
│   └── monitoring/              # prometheus, grafana, otel
└── blog/                        # blog post drafts (if you go GitHub Pages route)
