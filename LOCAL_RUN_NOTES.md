# SyntheticHaystack Local Run Notes

This checkout includes `data/TS_max_atphi_test.mat`, a smoke-test placeholder
for the missing upstream `TS_max_atphi.mat` file.

The placeholder file is not Margaret Morris's original angular target-strength
surface. It only provides the variables expected by `SyntheticHaystack.m`:

- `phis`: polar/incidence angles in degrees
- `TS`: normalized angular response in dB

The placeholder curve is weak near normal incidence and peaks near `55` degrees
so the script can run while the real target-strength source is pending.

Run from MATLAB:

```matlab
cd('~/Desktop/SyntheticHaystack_laptop_run')
SyntheticHaystack
```

The script writes output under `model_output/` beside the script.

