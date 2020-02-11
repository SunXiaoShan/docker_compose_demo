# 從 python3.4 基礎上加工
FROM python:3.4-alpine 

# 將本地端程式碼複製到 container 裡面 ./code 資料夾
ADD . /code

# container 裡面的工作目錄
WORKDIR /code 
RUN pip install -r requirements.txt
CMD ["python", "app.py"]