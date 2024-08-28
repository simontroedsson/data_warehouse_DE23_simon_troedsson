import dlt
import json
import requests
import pandas as pd
from pathlib import Path
import os

#url = "https://openparking.stockholm.se/LTF-Tolken/v1/servicedagar/street/Rind%C3%B6gatan?outputFormat=json&apiKey=d078a56a-bc6d-4072-abde-09c8fac53741"

def _get_ads(url):
    headers = {'accept': 'application/json'}
    response = requests.get(url, headers=headers)
    response.raise_for_status()  # check for http errors
    return json.loads(response.content.decode('utf8'))

@dlt.resource(write_disposition="replace")
def jobsearch_resource():
    url = "https://openparking.stockholm.se/LTF-Tolken/v1/servicedagar/street/Rind%C3%B6gatan?outputFormat=json&apiKey=d078a56a-bc6d-4072-abde-09c8fac53741"
    for ad in _get_ads(url)["features"]:
        yield ad

def run_pipeline(table_name):
    pipeline = dlt.pipeline(
    pipeline_name='parking',
    destination='snowflake',
    dataset_name='staging',
)
    load_info = pipeline.run(jobsearch_resource(), table_name=table_name)
    print(load_info)


if __name__ == "__main__":
    # specify the pipeline name, destination and dataset name when configuring pipeline,
    # otherwise the defaults will be used that are derived from the current script name
    working_directory = Path(__file__).parent
    os.chdir(working_directory)
    table_name = "data_field_parking"
    run_pipeline(table_name)
    
