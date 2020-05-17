import os
import time
path_to_watch = "../Output_Slow"
before = dict([(f, None) for f in os.listdir(path_to_watch)])
while 1:
    time.sleep(5)
    after = dict([(f, None) for f in os.listdir(path_to_watch)])
    added = [f for f in after if not f in before]
    removed = [f for f in before if not f in after]
    if added:
        for file in added:
            if file[-4:].lower() == ".fbx":
                print("fbx file added: " + file)
                cmd = "./FBX2glTF-linux-x64 --binary --verbose --input ../Output_Slow/" + \
                    file + " --output ../glb-files/" + \
                    file[:-4] + ".glb"
                os.system(cmd)
    before = after
