## Scalable-Dev
This Repo holds the code for our Tensorflow Serving Server which is the Core Deep learning API for our Farmers_ToolKit Project


 ![thinkwt](https://user-images.githubusercontent.com/25388109/132993142-63297874-894f-4026-a684-b80c3e62cf85.png)

The [Farmers_TK_Notebooks](https://github.com/ThinkAwt-Inc/Farmer_TK_Notebooks/tree/main/notebooks) utilizes one of the interesting use cases Machine Learning and Deep Learning has been used for, a use case at the classification of the plant images along different disease diagnostic criteria. Each of these plants (Corn, Tomato, Potato, Cassava, (More to be added in subsequent time)) was modeled using deep learning tools; Tensorflow and Pytorch. Each of the notebooks with the detailed steps of building the models are made available in the notebooks folder of the [Farmers_TK_Notebooks](https://github.com/ThinkAwt-Inc/Farmer_TK_Notebooks/tree/main/notebooks).

Each version of the model is available in the models folder, which gives room to add more versions if models get retrained and does much better than the previous version. Also in the models folder is the “models.conf” file in JSON format, which contains the parameters of each model, i.e 
- name, 
- base_path, 
- Model_platform,
- Model_version_policy

The CI/CD workflow pipeline uses github actions to automate the workflow. The FASTAPI as the backend service and the Heroku.yml file serving as the container-based cloud platform 
where we deploy, manage and scale our application.


## PREREQUISITES:

- Need a Heroku account
- Set up CD Pipeline on github action.

## Installation -> 

Heroku.yml and the CD Pipeline declared via github actions


## AUTHORS :

[Emmanuel Ogunwede ](https://github.com/JesuFemi-O)

[Eni. C ](https://github.com/cornzyblack)

[Sooter Saalu](https://github.com/Soot3)

[Ihuoma Basil](https://github.com/Sillians)

