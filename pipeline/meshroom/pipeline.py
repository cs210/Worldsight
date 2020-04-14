import json
import argparse
import os
import subprocess
import shlex

"""
Parse arguments:
ARGUMENTS:
-i: input directory for images
-o: output directory for results
-d: T/F whether or not to MeshDecimate, default True
"""
import random

#generate a new random hex for this folder
ran = random.randrange(10**80)
myhex = "%064x" % ran

#limit string to 64 characters
myhex = myhex[:40]


decimate_node = {
            "nodeType": "MeshDecimate",
            "position": [
                1521,
                61
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": myhex
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{MeshFiltering_1.outputMesh}",
                "simplificationFactor": 0.5,
                "nbVertices": 0,
                "minVertices": 0,
                "maxVertices": 100000,
                "flipNormals": False,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/mesh.obj"
            }
        }


#run a subprocess and stream the output of subprocess STDOUT to main STDOUT
def run_command(command):
    #open a subprocess, pipe outputs to STDOUT
    process = subprocess.Popen(shlex.split(command), stdout=subprocess.PIPE, shell=True)
    while True:
        output = process.stdout.readline() # only pipe outputs if there is something, to try and reduce memory buffer size
        if output.decode('utf-8') == '' and process.poll() is not None:
            break
        if output:
            print(output.strip().decode('utf-8'))
    rc = process.poll()
    return rc


def get_args():
   parser = argparse.ArgumentParser(description="Photogrammetry pipeline")
   parser.add_argument('-i', '--input', type=str, required=True)
   parser.add_argument('-o', '--output', type=str, required=True)
   parser.add_argument('-d', '--decimate', type=bool, default=True) 

   return parser.parse_args()

def build_graph(args):
    input_path = args.input
    output_path = args.output
    decimate = args.decimate
    
    if decimate:
        # generate normal graph, then add the decimation node
        print(os.system('set PYTHONPATH=' + '%' + 'cd%' + '&& python bin\\meshroom_photogrammetry --input {} --output {} --compute False --save temp.mg'.format(input_path, output_path)))
        print("Initial graph completed")
        # load json, add necessary nodes (should just be meshDecimate)
        with open('temp.mg') as f:
            graph = json.load(f)
        graph['header']['nodesVersions']['MeshDecimate'] = "1.0"
        graph['graph']['MeshDecimate_1'] = decimate_node
        graph['graph']['Texturing_1']['inputs']['inputMesh'] = "{MeshDecimate_1.output}"
        with open('updated.mg', 'w') as outfile:
            json.dump(graph, outfile)
        print("Updated graph completed")
    else:
        return

def execute(args):
    command = ''
    input_path = args.input
    output_path = args.output
    decimate = args.decimate
    if args.decimate:  # no decimation, just do the normal thing
        command = 'python bin\\meshroom_photogrammetry --input {} --output {} --pipeline updated.mg --forceStatus'.format(input_path, output_path)
    else: #run modified command with new graph
        command = 'python bin\\meshroom_photogrammetry --input {} --output {} --forceStatus'.format(input_path, output_path)
    print(command)
    # execute command
    #run_command(command)
    print(os.system(command))
    print("Process completed")

def main():
    args = get_args()
    graph = build_graph(args)
    execute(args)

if __name__ == '__main__':
    main()