import osproc, os, strutils


let
  nim_args = join(["--skipParentCfg:on"], " ")
  nim = getAppDir() / "bin" / "nim"
  runtime_dir = getEnv("LAMBDA_RUNTIME_DIR")
  handler = getEnv("_HANDLER")
  bootstrap_src = runtime_dir / handler
  bootstrap_script = bootstrap_src & "s"
  cp_script = join(["cp", bootstrap_src, bootstrap_script], " ")
  nim_script = join([nim, nim_args, bootstrap_script], " ")


discard execCmd cp_script
discard execCmd nim_script
