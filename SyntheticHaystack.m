% Script entry point for MATLAB's Run button.
%
% For command-line use, call SyntheticHaystack_run("smoke") or
% SyntheticHaystack_run("default") directly.

if ~exist("run_mode", "var") || strlength(string(run_mode)) == 0
    run_mode = "default";
end

SyntheticHaystack_run(run_mode);
