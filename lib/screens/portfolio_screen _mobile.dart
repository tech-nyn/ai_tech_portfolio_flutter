
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../providers/custom_providers.dart';
import '../widgets/custom_widgets.dart';

class PortfolioScreenMobile extends ConsumerWidget{
  const PortfolioScreenMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final gap = ref.watch(gapProvider);
    final radius = ref.watch(radiusProvider);
    final statCard1Color = ref.watch(statCard1ColorProvider);
    final statCard2Color = ref.watch(statCard2ColorProvider);
    final statCard3Color = ref.watch(statCard3ColorProvider);
    final darkTextColor = ref.watch(darkTextColorProvider);
    final brightTextColor = ref.watch(brightTextColorProvider);
    final padding = ref.watch(paddingProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0C0404),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 2000.0
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomColoredBox(
                child: CustomContentBox(
                  leading:  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                      children: [
                        TextSpan(text: "Bim", style: TextStyle(color: darkTextColor)),
                        TextSpan(text: "Graph", style: TextStyle(color: brightTextColor)),
                      ]
                    )
                  ),
                  trailing: SvgPicture.asset(
                    "assets/images/hamburger_menu.svg",
                    width: 30.0,
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.all(padding),
                child: CustomColoredBox(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Bringing Your Ideas To Life Through UI Design",
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          WidgetSpan(child: SizedBox(width: gap)),
                          const WidgetSpan(
                            child: CustomSvgIconButton(
                              label: "Hire Me",
                              iconPath: "assets/images/waving_hand.svg"
                            )
                          ),
                        ]
                      ),
                    ),
                  )
                ),
              ),

              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: CustomStatCard(
                          statNumber: "2+",
                          statDescription: "Years Experience",
                          color: statCard1Color,
                        ),
                      ),
                      SizedBox(width: gap, height: gap),
                      Expanded(
                        child: CustomStatCard(
                          statNumber: "54+",
                          statDescription: "Handled Projects",
                          textColor: Colors.black87,
                          color: statCard2Color,
                        ),
                      ),
                      SizedBox(width: gap, height: gap),
                      Expanded(
                        child: CustomStatCard(
                          statNumber: "40+",
                          statDescription: "Clients",
                          color: statCard3Color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      image: const DecorationImage(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/user.jpg"
                        )
                      )
                    )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: CustomColoredBox(
                  child: CustomContentBox(
                    leading: const CustomText(text: "Name: ", isDark: true,),
                    // trailing: CustomText(text: "Bima Sakti", isBold: true,)
                    trailing: CustomText(text: ref.watch(nameProvider), isBold: true,)
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: CustomColoredBox(
                  child: CustomContentBox(
                    contentGap: 8.0,
                    leading: const CustomText(
                      isDark: true,
                      text: "location:",
                    ),
                    trailing: CustomText(
                      isBold: true,
                      text: ref.watch(locationProvider),
                    ),
                    content: const SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/map.png"
                            )
                          )
                        )
                      ),
                    ),
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: const CustomColoredBox(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomSocialIcon("assets/images/social_facebook.svg"),
                        CustomSocialIcon("assets/images/social_twitter.svg"),
                        CustomSocialIcon("assets/images/social_dribbble.svg"),
                        CustomSocialIcon("assets/images/social_instagram.svg"),
                      ],
                    )
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: SizedBox(
                  height: 200.0,
                  child: CustomColoredBox(
                    child: CustomContentBox(
                      leading: const CustomText(
                        text: "UI Portfolio",
                        isBold: true,
                        size: 24,
                      ),
                      trailing: const CustomText(
                        text: "See All",
                        isDark: true,
                        isBold: true,
                        size: 20,
                      ),
                      content: Flex(
                        direction: Axis.horizontal,
                        children: [
                          const Expanded(
                            child: CustomPortfolioCard(
                              imagePath: "assets/images/portfolio_1.png",
                              isReadMore: true,
                            )
                          ),
                          SizedBox(width: gap, height: gap),
                          const Expanded(
                            child: CustomPortfolioCard(
                              imagePath: "assets/images/portfolio_2.png",
                            )
                          ),
                          SizedBox(width: gap, height: gap),
                          // Flexible(
                          const Expanded(
                            child: CustomPortfolioCard(
                              imagePath: "assets/images/portfolio_3.jpeg",
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
                child: SizedBox(
                  child: CustomColoredBox(
                    child: CustomContentBox(
                      leading: const CustomText(
                        text: "About",
                        size: 24,
                        isBold: true,
                      ),
                      trailing: const CustomText(
                        text: "Resume",
                        size: 20.0,
                        isDark: true,
                        isBold: true,
                      ),
                      content: Text(
                        ref.watch(aboutProvider),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                        style: TextStyle(
                          color: darkTextColor,
                          fontSize: 12.0,
                        ),
                      ),
                    )
                  ),
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}














