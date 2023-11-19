import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Afternoon',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(10),
                        Text('Book Tickets', style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      width: AppLayout.getHeight(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(10),
                      ),
                      color: const Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(12),
                    vertical: AppLayout.getHeight(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(
                            0xFFBFC205,
                          )),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(bigText: 'Upcoming flight', smallText: 'view all'),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket,))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: const AppDoubleTextWidget(bigText: 'Hotels', smallText: 'view all'),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: Row(
                children: hotelList
                    .map(
                      (singleHotel) => HotelScreen(hotel: singleHotel),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}
