import 'package:admin_panel/constants.dart';
import 'package:admin_panel/screens/dashbord/components/chart.dart';
import 'package:admin_panel/screens/dashbord/components/storage_inf_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            numOfFiles: 1398,
            amountOfFiles: "1.5GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            numOfFiles: 228,
            amountOfFiles: "15.2GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Folder Files",
            numOfFiles: 2124,
            amountOfFiles: "12GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unkown",
            numOfFiles: 2000,
            amountOfFiles: "15.2GB",
          ),
        ],
      ),
    );
  }
}


