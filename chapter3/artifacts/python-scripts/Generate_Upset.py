import sys

import pandas as pd
from upsetplot import plot, from_contents
from matplotlib import pyplot as plt

approach_names = sys.argv[1:]

df = pd.read_excel('../classification.xlsx')
# Lower case to find things more conveniently.
df.columns = map(str.lower, df.columns)

content = {}
for approach in approach_names:
    approach_original = approach
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
    content[approach_original] = feature_set

approaches = from_contents(content)

plot(approaches)

filename = '_'.join(approach_names) + "_upset"
plt.savefig("./upset-plots/" + filename + ".svg", format="svg", bbox_inches="tight")
plt.show()
