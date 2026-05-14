# SyntheticHaystack Local Run Notes

This checkout includes Margaret Morris's upstream `data/TS_max_atphi.mat`.

The real target-strength file was imported from
`margamo-sio/SyntheticHaystack` commit
`e187cdc6323c4bbcccaf7951654a3fef158a95aa`, blob
`3e7ab3209577ead23bb660d6150b203798eb7d2a`.

`SyntheticHaystack.m` requires that real target-strength file. It must provide
the variables expected by the model:

- `phis`: polar/incidence angles in degrees
- `TS`: normalized angular response in dB

Run a quick check from MATLAB:

```matlab
cd('C:\Users\<you>\Desktop\SyntheticHaystack')
SyntheticHaystack_run("smoke")
```

Then run the imported high-cost settings:

```matlab
SyntheticHaystack_run("default")
```

The script writes output under `model_output/` beside the script.
