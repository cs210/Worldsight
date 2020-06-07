#!/bin/bash

start=`date +%s`
input="$PWD/$1"
output="$PWD/$2"
cd "$(dirname "$0")"
echo "Starting Photogrammetry"
echo "input: ${input}"
echo "output: ${output}"
echo ""

echo "Starting"
echo ""
./meshroom_photogrammetry --input ${input} --output ${output} --save temp.mg --forceStatus
echo ""
echo "Modifying Graph"
echo ""
python modify_graph.py
echo ""
echo "Modified graph"
echo ""
echo "Executing Pipeline"
./meshroom_photogrammetry --input ${input} --output ${output} --pipeline updated.mg --forceStatus
echo "Execution finished"

echo "Converting OBJ to GLTF"
echo ""
obj2gltf -i ${output}/texturedMesh.obj -o ${output}/texturedMesh.glb
echo "Conversion completed"
