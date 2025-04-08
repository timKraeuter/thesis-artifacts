import pandas as pd

df = pd.read_excel('../classification.xlsx')
# Lower case to find things more conveniently.
df.columns = map(str.lower, df.columns)

approach_names = ['Paper_B', 'Paper_D', 'BCOoL', 'Ptolemy', 'Wright', 'MontiArc', 'CommUnity', 'Metropolis', 'MECSYCO',
                  'DACCOSIM', 'CoSim20', 'UMoC++', 'LinguaFranca', 'Reo', 'Linda', 'BIP', 'Manifold', 'ForSyDe']

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

distance_matrix = {}


def jaccard_distance(set1, set2):
    intersection = len(set1.intersection(set2))
    union = len(set1.union(set2))
    return 1 - intersection / union


def feature_distance(set1, set2):
    return len(set1 - set2) + len(set2 - set1)


for approach1 in approach_names:
    distance_matrix[approach1] = {}
    for approach2 in approach_names:
        distance_matrix[approach1][approach2] = jaccard_distance(content[approach1], content[approach2])

distance_matrix = pd.DataFrame(distance_matrix, index=approach_names, columns=approach_names)

# Save distance matrix to file for the scatter plot.
distance_matrix.to_excel("./distance/distances.xlsx", index=False)

# Print as markdown
print(distance_matrix.to_markdown())
