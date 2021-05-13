import json
import bcrypt
import jwt

from json.decoder import JSONDecodeError
from django.views import View
from django.http  import JsonResponse
from users.models import User
from my_settings  import SECRET_KEY
class SignUpView(View):
    def post(self, request):
        try:
            
            data         = json.loads(request.body)

            account      = data["account"]
            password     = data["password"]
            email        = data["email"]
            phone_number = data["phone_number"]
            nickname     = data.get("nickname")
            address      = data.get("address")

            PASSWORD_LENGTH = 8

            if email == "" or password == "":
                return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)

            if email.count("@") == 0 or email.count(".") == 0:
                return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)

            if len(password) < PASSWORD_LENGTH:
                return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)

            if User.objects.filter(phone_number=phone_number).exists():
                return JsonResponse({"MESSAGE" : "ALREADY_EXISTS"}, status=400)

            if User.objects.filter(nickname=nickname).exists()\
                and data.get("nickname") != None:
                return JsonResponse({"MESSAGE" : "ALREADY_EXISTS"}, status=400)

            if User.objects.filter(address=address).exists()\
                and data.get("nickname") != None:
                return JsonResponse({"MESSAGE" : "ALREADY_EXISTS"}, status=400)
            
            hashed_password= bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt()).decode("utf-8")

            User.objects.create(
                account=account,
                password=hashed_password,
                email=email,
                phone_number=phone_number,
                nickname=nickname,
                address=address
                )
            return JsonResponse({"MESSAGE" : "SUCCESS"}, status = 201)

        except KeyError:
            return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status = 400)

class LogInView(View):
    def post(self, request):
        try:
            data = json.loads(request.body)
            user = User.objects.get(account=data["account"])
            hashed_password = user.password.encode("utf-8")

            if not bcrypt.checkpw(data["password"].encode("utf-8"), hashed_password):
                return JsonResponse({"MESSAGE":"INVALID_USER"}, status=401)

            access_token = jwt.encode(
            {"account" : user.account},  
            SECRET_KEY,
            algorithm = "HS256"
            )
            return JsonResponse({"MESSAGE":"SUCCESS", "ACCESS_TOKEN": access_token}, status=200)
        
        except json.JSONDecodeError as e:
            return JsonResponse({"MESSAGE": e.__cause__}) 
        
        except User.DoesNotExist:
            return JsonResponse({"MESSAGE": "INVALID_USER"}, status=401)
        
        except KeyError:
            return JsonResponse({"MESSAGE":"KEY_ERROR"}, status=400)