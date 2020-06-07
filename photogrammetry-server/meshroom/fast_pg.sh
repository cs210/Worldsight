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
./meshroom_photogrammetry --input ${input} --output ${output} --save ${graph}/temp_fast.mg --forceStatus
# ../meshroom/meshroom_photogrammetry --input ../pg-node-backend/pg-inputs/clorox --output ../pg-node-backend/pg-outputs/clorox --save temp_fast.mg --forceStatus
echo ""
echo "Modifying Graph"
echo ""
python modify_graph.py --f True -i ${graph}
# python ../meshroom/modify_graph.py --f True
echo ""
echo "Modified graph"
echo ""
echo "Executing Pipeline"
./meshroom_photogrammetry --input ${input} --output ${output} --pipeline ${graph}/updated_fast.mg --forceStatus --forceCompute
# ../meshroom/meshroom_photogrammetry --input ../pg-node-backend/pg-inputs/clorox --output ../pg-node-backend/pg-outputs/clorox --pipeline updated_fast.mg --forceStatus --forceCompute
echo ""
echo "Execution finished"

echo "Converting OBJ to GLTF"
echo ${output}
echo ""
obj2gltf -i ${output}/texturedMesh.obj -o ${output}/texturedMesh.glb
echo "Conversion completed"


end=`date +%s`


runtime=$((end-start))

echo $runtime
