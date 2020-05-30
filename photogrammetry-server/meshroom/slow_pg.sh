#!/bin/bash


echo "Starting" 
echo ""
./meshroom_photogrammetry --input $1 --output $2 --save temp.mg --forceStatus
echo ""
echo "Modifying Graph"
echo ""
python modify_graph.py
echo ""
echo "Modified graph"
echo ""
echo "Executing Pipeline"
./meshroom_photogrammetry --input $1 --output $2 --pipeline updated.mg --forceStatus
echo "Execution finished"

echo "Converting OBJ to GLTF"
echo ""
obj2gltf -i $2/texturedMesh.obj -o $2/texturedMesh.glb
echo "Conversion completed"

