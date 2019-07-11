all : build/cpm.js

build/cpm.js: rollup.config.js app/index.js \
	models/CPM.js models/GridBasedModel.js models/CA.js \
	DiceSet.js Canvas.js \
	grid/Grid.js grid/Grid2D.js grid/Grid3D.js grid/GridManipulator.js \
	hamiltonian/Adhesion.js hamiltonian/HardVolumeRangeConstraint.js \
	hamiltonian/PerimeterConstraint.js hamiltonian/ActivityConstraint.js \
	hamiltonian/PreferredDirectionConstraint.js stats/PostMCSStats.js \
	hamiltonian/ChemotaxisConstraint.js hamiltonian/BarrierConstraint.js 
	node_modules/rollup/bin/rollup -c
