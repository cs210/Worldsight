import json
import random
import os
import argparse

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

def get_args():
   parser = argparse.ArgumentParser(description="Photogrammetry pipeline")
   parser.add_argument('-f', '--fast', type=bool, default=False)
   parser.add_argument('-i', '--inputDir', default="")
   return parser.parse_args()


def build_graph(args):

    filename = ''
    if args.fast:
        filename = os.path.join(args.inputDir, 'temp_fast.mg')
    else:
        filename = os.path.join(args.inputDir, 'temp.mg')

    with open(filename) as f:
        graph = json.load(f)
        graph['header']['nodesVersions']['MeshDecimate'] = "1.0"
        graph['graph']['FeatureExtraction_1']['inputs']['forceCpuExtraction'] = False
        graph['graph']['MeshDecimate_1'] = decimate_node
        graph['graph']['Texturing_1']['inputs']['inputMesh'] = "{MeshDecimate_1.output}"

        if args.fast:
            del graph['header']['nodesVersions']['PrepareDenseScene']
            del graph['header']['nodesVersions']['DepthMap']
            del graph['header']['nodesVersions']['DepthMapFilter']

            del graph['graph']['PrepareDenseScene_1']
            del graph['graph']['DepthMap_1']
            del graph['graph']['DepthMapFilter_1']

            graph['graph']['FeatureExtraction_1']['inputs']['describerPreset'] = 'high'

            graph['graph']['Meshing_1']['inputs']['input'] = "{StructureFromMotion_1.output}"
            graph['graph']['Meshing_1']['inputs']['depthMapsFolder'] = ""
            graph['graph']['Meshing_1']['inputs']['depthMapsFilterFolder'] = ""

            graph['graph']['Texturing_1']['inputs']['imagesFolder'] = ""

        with open(filename.replace('temp', 'updated'), 'w') as outfile:
            json.dump(graph, outfile)
        print("Updated graph completed")


def main():
    args = get_args()
    build_graph(args)


if __name__ == '__main__':
    main()
