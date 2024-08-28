import dlt
import dlt
import pandas as pd
from pathlib import Path
import os
import pprint

@dlt.resource(write_disposition="replace")
def load_snowflake_resource(file_path: str, **kwargs):
    df = pd.read_csv(file_path, **kwargs)
    yield df.to_dict(orient="records")


if __name__ == "__main__":
    working_directory = Path(__file__).parent
    os.chdir(working_directory)
    # specify the pipeline name, destination and dataset name when configuring pipeline,
    # otherwise the defaults will be used that are derived from the current script name
    pipeline = dlt.pipeline(
        pipeline_name='marketing',
        destination='snowflake',
        dataset_name='staging', #schema
    )

    data = list(
        load_snowflake_resource(working_directory / "iFood.csv", encoding="latin1")
        
        )

    # run the pipeline with your parameters
    # load_info = pipeline.run(source())
    #pprint.pprint(data)

    load_info = pipeline.run(data, table_name="marketing_data")

    # pretty print the information on data that was loaded
    # print(load_info)
