/* APPROX_COUNT_DISTINCT() returns an approximate value, rather than a precise value. */


select APPROX_COUNT_DISTINCT(*) from sys.tables with(nolock);

/* fonts