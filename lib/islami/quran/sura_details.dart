import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/islami/quran/quran_resources.dart';
import 'package:islami_project/islami/quran/sura_content.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_images.dart';
import 'package:islami_project/utilits/app_them.dart';
import 'package:provider/provider.dart';

import '../../provider/most_recently_provider.dart';

class SuraDetails extends StatefulWidget {
    SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];
  late MostRecentlyProvider mostRecentlyProvider;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mostRecentlyProvider.getLastSura();
  }

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    int index=ModalRoute.of(context)!.settings.arguments as int;
     mostRecentlyProvider=Provider.of<MostRecentlyProvider>(context);
    if(verses.isEmpty) {
      readSuraFile(index);
    }
    return SafeArea(
        child: Scaffold(
         // backgroundColor: AppColors.black,
      appBar: AppBar(
        title: Text(QuranResources.englishQuranSurahs[index],style: Appthem.goldthem20.textTheme.headlineLarge,),
      ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: width*0.06,vertical: height*0.01),
            decoration: BoxDecoration(
              color: AppColors.black,
              image: DecorationImage(image: AssetImage(AppImages.suraBackground))
            ),
            child: Padding(
              padding:   EdgeInsets.symmetric(vertical: height*0.02),
              child: Column(children: [
                Text(QuranResources.arabicAuranSuras[index],style: Appthem.goldthem24.textTheme.headlineLarge,),
                Expanded(child:
                verses.isEmpty?Center(child: CircularProgressIndicator(color: AppColors.gold,),)
                    :ListView.separated(
                        padding:EdgeInsets.only(
                    bottom: height*0.04,
                                      ) ,
                    itemBuilder: (context, index) {
                      return SuraContent(index:index ,content:verses[index] ,);
                    },
                    separatorBuilder: (context, index) => SizedBox(height:height*0.02,),
                    itemCount: verses.length), ),
                SizedBox(height: height*0.10,)
              ],),
            )

          ),
    ));
  }

  Future<void>  readSuraFile(int index) async {
   String fileContent = await rootBundle.loadString('assets/files/sura/${index+1}.txt');
  List<String>suraContents = fileContent.split('\n');
  verses=suraContents;
  setState(() {

  });
  }
}
