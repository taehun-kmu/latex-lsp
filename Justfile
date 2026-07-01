_default:
    @just --list

verify:
    ./validation/run_verify.sh

static-analysis:
    ./validation/run_static_analysis.sh
