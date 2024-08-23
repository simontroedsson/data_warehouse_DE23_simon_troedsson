import dlt
import pandas as pd
from pathlib import Path
import os
import pprint

@dlt.resource(write_disposition="append")
def load_snowflake_resource(file_path: str, **kwargs):
    df = pd.read_csv("NetflixOriginals.csv", **kwargs)
    yield df.to_dict(orient="records")

if __name__ == "__main__":
    working_directory = Path(__file__).parent
    os.chdir(working_directory)
    # specify the pipeline name, destination and dataset name when configuring pipeline,
    # otherwise the defaults will be used that are derived from the current script name
    pipeline = dlt.pipeline(
        pipeline_name='load_snowflake',
        destination='snowflake',
        dataset_name='staging', #schema
    )

    data = list(
        load_snowflake_resource(working_directory / "NetflixOriginals.csv", encoding="latin1")
        
        )

    # print the data yielded from resource
    pprint.pprint(data)

    # run the pipeline with your parameters
    load_info = pipeline.run(data, table_name="netflix")

    # pretty print the information on data that was loaded
    print(load_info)
