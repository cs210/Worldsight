#!/bin/bash

start=`date +%s`
input="$PWD/$1"
output="$PWD/$2"
graph="$PWD/$3"
cd "$(dirname "$0")"
echo "Starting Photogrammetry"
echo "input: ${input}"
echo "output: ${output}"
echo "graph: ${graph}"

echo ""

echo "Starting"
echo ""
./meshroom_photogrammetry --input ${input} --output ${output} --save ${graph}/temp.mg --forceStatus
echo ""
echo "Modifying Graph"
echo ""
python modify_graph.py -i ${graph}
echo ""
echo "Modified graph"
echo ""
echo "Executing Pipeline"
./meshroom_photogrammetry --input ${input} --output ${output} --pipeline ${graph}/updated.mg --forceStatus
echo "Execution finished"

echo "Converting OBJ to GLTF"
echo ""
obj2gltf -i ${output}/texturedMesh.obj -o ${output}/texturedMesh.glb
echo "Conversion completed"
