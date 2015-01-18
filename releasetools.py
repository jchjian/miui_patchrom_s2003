import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "assert" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "getprop(" in edify.script[i]:
      edify.script[i] = ''
      return

def AddArgsForSetPermission(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "set_perm(" in edify.script[i] and "/system/xbin/lbesec" in edify.script[i]:
      edify.script[i] = 'set_perm(0, 0, 06755, "/system/xbin/lbesec");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def AddFileLinks(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ui_print(" in edify.script[i] and "Creating" in edify.script[i]:
      edify.script[i] = '''ui_print("Creating system links...");
symlink("/data/misc/audio/wcd9320_anc.bin", "/system/etc/firmware/wcd9306/wcd9306_anc.bin");
symlink("/data/misc/audio/mbhc.bin", "/system/etc/firmware/wcd9306/wcd9306_mbhc.bin");'''
      return

def FullOTA_InstallEnd(info):
    AddArgsForSetPermission(info)
    AddFileLinks(info)
    WritePolicyConfig(info)
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)


