import json
import bcrypt
import jwt

from django.views import View
from django.http  import JsonResponse
from users.models import User

class SignUpViews(View):
    def post(self, request):
        try:
            data         = json.loads(request.body)

            account      = data['account']
            password     = data['password']
            email        = data['email']
            phone_number = data['phone_number']
            nickname     = data.get('nickname')
            address      = data.get('address')

            hashed_password= bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

            if email == "" or password == "":
                return JsonResponse({'MESSAGE' : 'KEY_ERROR'}, status=400)

            if email.count('@') == 0 or email.count('.') == 0:
                return JsonResponse({'MESSAGE' : 'KEY_ERROR'}, status=400)

            if User.objects.filter(phone_number=phone_number).exists():
                return JsonResponse({'MESSAGE' : 'ALREADY_EXISTS'}, status=400)

            if User.objects.filter(nickname=nickname).exists():
                return JsonResponse({'MESSAGE' : 'ALREADY_EXISTS'}, status=400)

            if User.objects.filter(address=address).exists():
                return JsonResponse({'MESSAGE' : 'ALREADY_EXISTS'}, status=400)

            User.objects.create(
                account=account,
                password=hashed_password,
                email=email,
                phone_number=phone_number,
                nickname=nickname,
                address=address
                )
            return JsonResponse({'MESSAGE' : 'SUCCESS'}, status = 201)
        except KeyError:
            return JsonResponse({'MESSAGE' : 'KEY_ERROR'}, status = 400)
