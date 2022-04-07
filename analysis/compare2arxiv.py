import glob

RES = "example.attacks/redo.korg.results.with.partial.order.reduction"

comparisons = [
	(RES + "/phi1.oldKorg.false_False", "out/experiment1_False_False"),
	(RES + "/phi1.oldKorg.true_True"  , "out/experiment1_True_True"  ),
	(RES + "/phi2.oldKorg.false_False", "out/experiment2_False_False"),
	(RES + "/phi2.oldKorg.true_True"  , "out/experiment2_True_True"  ),
	(RES + "/phi3.oldKorg.false_False", "out/experiment3_False_False"),
	(RES + "/phi3.oldKorg.true_True"  , "out/experiment3_True_True"  )
]

for (vAdir, vBdir) in comparisons:
	for vA in glob.glob(vAdir + "/*.pml"):
		vAname = vA.split("/")[-1]
		vB = vBdir + "/" + vAname
		with open(vA, "r") as fr1:
			next(fr1)
			vAtext = fr1.read()
			with open(vB, "r") as fr2:
				next(fr2)
				vBtext = fr2.read()
				if (vAtext == vBtext):
					print("SUCCESS: " + vA + " contains the same code as " + vB)
				else:
					print("ERROR: " + vA + " does not contain the same code as " + vB)
					print("---------------------------------------------------------")
					print(vA)
					print(".........................................................")
					print(vAtext)
					print("---------------------------------------------------------")
					print(vB)
					print(".........................................................")
					print(vBtext)