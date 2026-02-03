#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 6376
# Hash 3634
# Hash 5523
# Hash 1109
# Hash 7734
# Hash 2906
# Hash 8067
# Hash 2646
# Hash 9917
# Hash 6131
# Hash 7149
# Hash 8333
# Hash 6464
# Hash 6230
# Hash 2356
# Hash 6642
# Hash 1999
# Hash 7031
# Hash 4571
# Hash 3144
# Hash 8041
# Hash 5877
# Hash 7233
# Hash 1978
# Hash 7145
# Hash 9881
# Hash 2848
# Hash 5815
# Hash 1101
# Hash 5174
# Hash 7577
# Hash 9281
# Hash 5715
# Hash 6495
# Hash 5962
# Hash 6571
# Hash 6304
# Hash 2251
# Hash 5814
# Hash 3811
# Hash 9916
# Hash 4127
# Hash 3475
# Hash 9816
# Hash 6385
# Hash 3839
# Hash 8524
# Hash 6185
# Hash 7159
# Hash 5487
# Hash 1255
# Hash 5501
# Hash 8903
# Hash 3961
# Hash 4511
# Hash 3805
# Hash 8532
# Hash 6985
# Hash 3253
# Hash 6641
# Hash 2778
# Hash 9213
# Hash 9750
# Hash 9065
# Hash 7833
# Hash 1943
# Hash 1582
# Hash 1243
# Hash 6687
# Hash 2023
# Hash 1188
# Hash 3652
# Hash 6448
# Hash 6081
# Hash 8275
# Hash 5357
# Hash 5260
# Hash 1829
# Hash 4748
# Hash 4635
# Hash 9368
# Hash 2631
# Hash 4362
# Hash 4702
# Hash 3383
# Hash 7281
# Hash 3022
# Hash 4407
# Hash 5802
# Hash 8027
# Hash 3324
# Hash 4874
# Hash 3284
# Hash 2641
# Hash 4541
# Hash 5442
# Hash 5938
# Hash 3301
# Hash 2729
# Hash 3872
# Hash 1997
# Hash 5250
# Hash 9166
# Hash 7025
# Hash 1293
# Hash 2273
# Hash 7944
# Hash 4962
# Hash 5771
# Hash 1080
# Hash 2724
# Hash 9958
# Hash 5861
# Hash 2710
# Hash 2940
# Hash 9204
# Hash 3490
# Hash 6832
# Hash 5207
# Hash 1956
# Hash 9712
# Hash 8843
# Hash 7083
# Hash 1577
# Hash 2585
# Hash 1924
# Hash 3416
# Hash 9802
# Hash 2415
# Hash 5500
# Hash 3275
# Hash 2514
# Hash 8517
# Hash 5266
# Hash 9410
# Hash 2263
# Hash 9834
# Hash 6735
# Hash 2092
# Hash 6226
# Hash 7061
# Hash 4138
# Hash 7221
# Hash 6320
# Hash 5788
# Hash 6587
# Hash 7491
# Hash 3238
# Hash 7472
# Hash 7964
# Hash 3940
# Hash 4894
# Hash 5470
# Hash 2625
# Hash 6234
# Hash 5661
# Hash 9073
# Hash 9541
# Hash 5225