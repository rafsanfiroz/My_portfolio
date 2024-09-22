
import 'package:flutter/material.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widget/custom_textField.dart';
import 'package:url_launcher/url_launcher.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  void _launchURL(String? url) async {
    if (url != null) {
      final Uri uri = Uri.parse(url);
      try {
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          print('Could not launch $url');
        }
      } catch (e) {
        print('Error occurred: $e');
      }
    } else {
      print('URL cannot be null');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get In Touch",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellowPrimary,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,

            ),
            child: LayoutBuilder(
              builder: (context,constraints){
                if (constraints.maxWidth >= KdesktopMinWidth){
                  return buildNameEmailDesktop();
                }
                else {
                  return buildNameEmailMobile();
                }

              },

            )
          ),
          const SizedBox(
            height: 20.0,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,

            ),
            child: const CustomTextfield(
              hintText: "Your message",
              maxLines: 15,
            ),
          ),
          const SizedBox(height: 20,),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,

            ),

            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Get in touch',style: TextStyle(color: CustomColor.yellowSecondary),))),
          ),

          const SizedBox(height: 30,),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300,

              ),
              child: const Divider()),
          const SizedBox(height: 20,),
          Wrap(
            spacing: 12,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap : () {
                    _launchURL(SnsLinks.github);

                  },
                  child: Image.asset("assets/images/github.png",width: 28,)),
              InkWell(
                  onTap: (){
                    _launchURL(SnsLinks.linkedIn);
                  },
                  child: Image.asset("assets/images/linkedin.png",width: 28,)),
              // InkWell(
              //     onTap: (){
              //       _launchURL(SnsLinks.facebook);
              //     },
              //     child: Image.asset("assets/images/facebook.png",width: 28,)),
              // InkWell(
              //     onTap: (){},
              //     child: Image.asset("assets/images/telegram.png",width: 28,)),
              // InkWell(
              //     onTap: (){},
              //     child: Image.asset("assets/images/instagram.png",width: 28,)),

            ],
          )
        ],
      ),
    ) ;
  }

  Row buildNameEmailDesktop (){

    return  Row(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Flexible(
          child: CustomTextfield(
            hintText: "Email",
          ),
        )
      ],
    );


  }

  Column buildNameEmailMobile (){
    return Column(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Flexible(
          child: CustomTextfield(
            hintText: "Email",
          ),
        )
      ],
    );

  }

}
