import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colors = [
    const Color(0xFF192259),
    const Color(0xFF10194E),
  ];

  List transactionTypeColor = [
    const Color(0xFF1DC7AC),
    const Color(0xFFFE4A54),
    const Color(0xFFFAAD39),
    const Color(0xFF1DC7AC),
  ];

  List imageAvatar = [
    'assets/images/avatar1.png',
    'assets/images/avatar2.png',
    'assets/images/avatar3.png',
    'assets/images/avatar4.png',
  ];

  List names = [
    'Adeboye Usman',
    'Mercy Popoola',
    'Onome Adetayo',
    'Kingsley Abiodun',
  ];

  List icons = [
    'received_icon',
    'sent_icon',
    'received_icon',
    'sent_icon',
  ];

  List transactionTitle = [
    'Received',
    'Failed',
    'Sent',
    'Received',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/menu_icon.svg'),
                          const SizedBox(width: 40),
                          Text(
                            'Hello Sandra,',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Container(
                        height: 32,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xFF212A6B),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Add money',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    color: const Color(0xFF426DDC),
                                    fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Your current balance is',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '₦ 200,000',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 164,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF464E8A),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Request money',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    color: const Color(0xFF464E8A),
                                    fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 164,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF464E8A),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Send money',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    color: const Color(0xFF464E8A),
                                    fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF10194E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                height: 7,
                                width: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF4E589F),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Transactions',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Sort by:  ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color: const Color(0xFF4E589F),
                                            ),
                                      ),
                                      Text(
                                        'Recents ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.white),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            controller: controller,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              Color color =
                                  index % 2 == 0 ? colors[0] : colors[1];
                              return Container(
                                height: 88,
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                color: color,
                                child: TransactionTile(
                                  imageAvatar: imageAvatar[index],
                                  name: names[index],
                                  icon: icons[index],
                                  transactionTitle: transactionTitle[index],
                                  transactionTypeColor:
                                      transactionTypeColor[index],
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    this.imageAvatar,
    this.name,
    this.icon,
    this.transactionTitle,
    this.transactionTypeColor,
  });

  final String? imageAvatar, name, icon, transactionTitle;
  final Color? transactionTypeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$imageAvatar'),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$name',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF858EC5)),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 28,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: transactionTypeColor,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/$icon.svg'),
                      Text(
                        '  $transactionTitle',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: const Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          '₦ 200,000',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w700, color: transactionTypeColor),
        ),
      ],
    );
  }
}
