# Rails Performance Triage Checklist

Use this checklist when p95/p99 response times drift or release confidence drops.

## 1) Confirm user impact first
- Which endpoints are degraded?
- What is the current error budget burn?
- Which customer segments are affected?

## 2) Separate app vs dependency latency
- Compare app time vs DB time vs external API time.
- Check queue latency for async spillover.
- Verify cache hit ratio and key churn.

## 3) Identify top query offenders
- Capture top 10 slowest queries by total time.
- Look for N+1 and over-fetching payload patterns.
- Validate index usage and row estimates.

## 4) Apply low-risk stabilizers
- Add bounded pagination and tighter select lists.
- Introduce targeted caching for hot read paths.
- Reduce expensive synchronous fan-out calls.

## 5) Guard the fix
- Add a regression check for affected endpoints.
- Track p95/p99 and saturation metrics after release.
- Document rollback trigger and owner.
# Rails Performance Triage Checklist

1. Capture p95/p99 latency for critical endpoints.
2. Identify N+1 queries and eager-load high-traffic associations.
3. Verify index coverage for top 10 slow SQL queries.
4. Confirm cache hit ratio for expensive reads.
5. Add queue-level backpressure for bursty async jobs.
6. Re-run baseline and compare before/after metrics.
