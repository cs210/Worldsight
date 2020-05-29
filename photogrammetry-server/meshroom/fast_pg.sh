#!/bin/bash
start=`date +%s`
input="$PWD/$1"
output="$PWD/$2"
cd "$(dirname "$0")"
echo "Starting Photogrammetry"
echo "input: ${input}"
echo "output: ${output}"
echo ""
./meshroom_photogrammetry --input ${input} --output ${output} --save temp_fast.mg --forceStatus
echo ""
echo "Modifying Graph"
echo ""
python modify_graph.py --f True
echo ""
echo "Modified graph"
echo ""
echo "Executing Pipeline"
./meshroom_photogrammetry --input ${input} --output ${output} --pipeline updated_fast.mg --forceStatus --forceCompute
echo "Execution finished"

end=`date +%s`

runtime=$((end-start))

echo $runtime
