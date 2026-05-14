# SyntheticHaystack Local Run Notes

This checkout includes Margaret Morris's upstream `data/TS_max_atphi.mat` and
also keeps `data/TS_max_atphi_test.mat` as a smoke-test fallback.

The real target-strength file was imported from
`margamo-sio/SyntheticHaystack` commit
`e187cdc6323c4bbcccaf7951654a3fef158a95aa`, blob
`3e7ab3209577ead23bb660d6150b203798eb7d2a`.

`SyntheticHaystack.m` prefers `data/TS_max_atphi.mat` when present. If that file
is absent, it falls back to `data/TS_max_atphi_test.mat`.

The fallback placeholder file is not Margaret Morris's original angular
target-strength surface. It only provides the variables expected by
`SyntheticHaystack.m`:

- `phis`: polar/incidence angles in degrees
- `TS`: normalized angular response in dB

The placeholder curve is weak near normal incidence and peaks near `55` degrees
so the script can still run if the real target-strength file is unavailable.

Run a quick check from MATLAB:

```matlab
cd('C:\Users\<you>\Desktop\SyntheticHaystack')
SyntheticHaystack("smoke")
```

Then run the imported high-cost settings:

```matlab
SyntheticHaystack("default")
```

The script writes output under `model_output/` beside the script.
