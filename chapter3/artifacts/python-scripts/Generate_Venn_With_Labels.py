#!/usr/bin/env python

# venn3 can only do a venn diagram of up to 3 sets.

import matplotlib.pyplot as plt
from matplotlib_venn import venn3
import sys
import pandas as pd

approach_names = sys.argv[1:]

if len(sys.argv) != 4:  # Includes the script name
    print(
        'There should be exactly 3 arguments to select 3 coordination approaches! Current arguments:',
        str(approach_names))
    sys.exit(1)

df = pd.read_excel('../classification.xlsx')
# Lower case to find things more conveniently.
df.columns = map(str.lower, df.columns)

approach_features = []
for approach in approach_names:
    approach = approach.lower()
    # Filter nan, to lowercase, to array.
    feature_cells = df[approach][df[approach].notnull()].str.lower().values
    feature_set = set()
    for feature_cell in feature_cells:
        # Handle cells that contain multiple features separated by ,
        if feature_cell.find(",") != -1:
            for feature in feature_cell.split(","):
                feature = feature.strip()
                feature_set.add(feature)
        else:
            feature_set.add(feature_cell)
    approach_features.append(feature_set)

venn = venn3(approach_features, approach_names)

# Print diff and overlap statistics.
A = approach_features[0]
B = approach_features[1]
C = approach_features[2]
A_name = approach_names[0]
B_name = approach_names[1]
C_name = approach_names[2]


def add_label(region_id, features):
    region = venn.get_label_by_id(region_id)
    if region is not None:
        region.set_text('\n'.join(features))

# Add overlap labels
# Pass empty set/string if you do not want any labels.
add_label("100", A - B - C)
add_label("110", A & B - C)
add_label("010", B - C - A)
add_label("101", A & C - B)
add_label("111", A & B & C)
add_label("011", B & C - A)
add_label("001", C - B - A)

filename = "./venn-diagrams/" + '_'.join(approach_names) + "_venn_labeled"
plt.savefig(filename + ".svg", format="svg", bbox_inches="tight")
plt.show()
