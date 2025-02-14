#!/bin/bash

# Copyright 2019 RBC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# download_datasets.sh can be used to download the datasets used in the experiments

if [ "$1" = "cervical" ]; then
    wget https://archive.ics.uci.edu/ml/machine-learning-databases/00383/risk_factors_cervical_cancer.csv
elif [ "$1" = "seizure" ]; then
    wget https://raw.githubusercontent.com/juliecious/sml-dataset/master/dataSets/Epileptic_Seizure_Recognition.csv
elif [ "$1" = "nhanes" ]; then
    wget https://raw.githubusercontent.com/semerj/NHANES-diabetes/master/data/diabetes_data_train.csv
    wget https://raw.githubusercontent.com/semerj/NHANES-diabetes/master/data/diabetes_data_test.csv
else
    echo "Unknown dataset"
fi