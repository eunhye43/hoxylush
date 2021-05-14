import json
import bcrypt
import jwt
import re

from django.views         import View
from django.http          import JsonResponse
from json.decoder         import JSONDecodeError

from users.models import User
from my_settings  import SECRET_KEY, ALGORITHM

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

            email_validation    = re.compile('^[a-z0-9]+@[a-z0-9]+\.[a-z0-9.]+$', re.I)
            password_validation = re.compile(r'^(?=.*[a-z])(?=.*[0-9])(?=.*[~!@#$%^&*]).{8,}', re.I)

            if not email_validation.match(email):
                return JsonResponse({"MESSAGE" : "INVALID_EMAIL"}, status=400)

            if not password_validation.match(password):
                return JsonResponse({"MESSAGE" : "INVALID_PASSWORD"}, status=400)
           
            if User.objects.filter(phone_number=data.get('phone_number')).exists() and data.get('phone_number') != None:
                return JsonResponse({'MESSAGE': 'ALREADY_EXISTS'}, status = 400)

            if User.objects.filter(nickname=data.get('nickname')).exists()\
                and data.get('nickname') != None:
                return JsonResponse({'MESSAGE' : 'ALREADY_EXISTS'}, status = 400)

            hashed_password= bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt()).decode("utf-8")

            User.objects.create(
                account      = account,
                password     = hashed_password,
                email        = email,
                phone_number = phone_number,
                nickname     = nickname,
                address      = address
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

            access_token = jwt.encode({"account" : user.id}, SECRET_KEY, algorithm = ALGORITHM)

            return JsonResponse({"MESSAGE":"SUCCESS", "ACCESS_TOKEN": access_token}, status=200)
        
        except json.JSONDecodeError:
            return JsonResponse({"MESSAGE": "KEY_ERROR"}, status=404) 
        
        except User.DoesNotExist:
            return JsonResponse({"MESSAGE": "INVALID_USER"}, status=404)
        
        except KeyError:
            return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)