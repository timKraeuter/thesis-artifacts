from sklearn.cluster import DBSCAN
import pandas as pd

distance_matrix = pd.read_excel('./distance/distances.xlsx')

# Clustering with Jaccard distance
clustering = DBSCAN(eps=0.34, min_samples=2, metric='precomputed')

# Clustering with feature distance (use feature_distance in line 44)
# clustering = DBSCAN(eps=4, min_samples=2, metric='precomputed')

clustering.fit(distance_matrix)

cluster_labels = clustering.labels_

n_clusters = len(set(cluster_labels)) - (1 if -1 in cluster_labels else 0)
n_noise = list(cluster_labels).count(-1)

print("Number of clusters: %d" % n_clusters)
print("Number of not clustered points: %d" % n_noise)

clusters = {}
# Not optimal code but fine for this dataset.
for label in cluster_labels:
    if label == -1:
        clusters["Not clustered"] = set()
    else:
        clusters[label] = set()

for idx, label in enumerate(cluster_labels):
    if label == -1:
        clusters["Not clustered"].add(distance_matrix.columns[idx])
    else:
        clusters[label].add(distance_matrix.columns[idx])


def cluster_sort(item):
    return str(item[0])


clusters = sorted(clusters.items(), key=cluster_sort)

print("Clusters:")
for key, value in clusters:
    print(f'{key}: {value}')
