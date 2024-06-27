import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custtom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailesSection extends StatelessWidget {
  const DetailesSection({super.key, required this.title, required this.author, required this.link});
  final String title;
  final String author;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Styles.textStyle32.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Text(
            author,
            style: Styles.textStyle20
                .copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const RatingSection(),
          const SizedBox(height: 8),
           Row(
            children: [
              Expanded(
                  child: CusttomButton(
                    onpressed: (){},
                backGroundColor: Colors.white,
                textColor: Colors.black,
                title: "19.99€",
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              )),
              Expanded(
                  child: CusttomButton(
                    onpressed: ()async{
                      Uri uri=Uri.parse(link);
                      if(await canLaunchUrl(uri) ){
                       await launchUrl(uri);
                        
                      }
                      else{
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text("Cant launch url"))
                        );
                      }
                    },
                backGroundColor: const Color(0XFFEF8262),
                textColor: Colors.white,
                title: "Free Preview",
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ))
            ],
          )
        ],
      ),
    );
  }
}
