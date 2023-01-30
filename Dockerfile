ARG UPSTREAM_VERSION

FROM etclabscore/core-geth:${UPSTREAM_VERSION}

ENTRYPOINT []
CMD geth \
    --classic \
    --port=$P2P_PORT \
    --http \
    --http.addr=0.0.0.0 \
    --http.corsdomain="*" \
    --http.vhosts="*" \
    --ws \
    --ws.addr=0.0.0.0 \
    --ws.origins="*" \
    --syncmode=${SYNCMODE:-snap} \
    --metrics \
    --metrics.addr=0.0.0.0 \
    --metrics.port=6060 \
    --pprof \
    --pprof.addr=0.0.0.0 \
    --pprof.port=6061 \
    $EXTRA_OPTS
