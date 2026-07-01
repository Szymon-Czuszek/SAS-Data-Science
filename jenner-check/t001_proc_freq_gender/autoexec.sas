/* Bundle setup: cap unlicensed-tier rows; suppress ODS graphics so
 * the PROC FREQ run is text-only and reproducible. */
options obs=100;
ods graphics off;
