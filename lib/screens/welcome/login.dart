import 'package:flutter/material.dart';
import 'package:test_me/utils/app_color.dart';
import 'package:test_me/widgets/custom_back_button.dart';
import 'package:test_me/widgets/custom_button.dart';
import 'package:test_me/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          leadingWidth: 100,
          leading: CustomBackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 32, 
                  fontWeight: FontWeight.w400,
                  color: AppColor.secondaryColor
                ),
              ),
              SizedBox(height: 12,),
              Text(
                "Enter your email address and password to access your account",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w400,
                  color: AppColor.secondaryColor
                ),
              ),
              SizedBox(height: 102,),
              CustomTextField(
                hintText: "Email",
              ),
              SizedBox(height: 12,),
              CustomTextField(
                obscureText: true,
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(height: 59,),
              CustomButton(
                onTap: (){},
                color: AppColor.secondaryColor,
                levelColor: AppColor.primaryColor,
                buttonLevel: "Login",
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.w500,
                      color: AppColor.secondaryColor
                    ),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child:  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.w500,
                      color: AppColor.accentColor
                    ),
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


