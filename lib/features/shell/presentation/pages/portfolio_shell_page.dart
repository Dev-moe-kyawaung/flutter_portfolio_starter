import 'package:flutter/material.dart';

import '../../../../../core/services/scroll_service.dart';
import '../widgets/mobile_drawer.dart';
import '../widgets/scroll_progress_glow.dart';
import '../widgets/sticky_navbar.dart';
import '../../../hero/presentation/pages/hero_section.dart';
import '../../../about/presentation/pages/about_section.dart';
import '../../../skills/presentation/pages/skills_section.dart';
import '../../../services/presentation/pages/services_section.dart';
import '../../../projects/presentation/pages/projects_section.dart';
import '../../../apps/presentation/pages/apps_section.dart';
import '../../../contact/presentation/pages/contact_section.dart';

class PortfolioShellPage extends StatefulWidget {
  const PortfolioShellPage({super.key});

  @override
  State<PortfolioShellPage> createState() => _PortfolioShellPageState();
}

class _PortfolioShellPageState extends State<PortfolioShellPage> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _appsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  late final List<GlobalKey> _keys = [
    _heroKey,
    _aboutKey,
    _skillsKey,
    _servicesKey,
    _projectsKey,
    _appsKey,
    _contactKey,
  ];

  final List<String> _labels = [
    'Home',
    'About',
    'Skills',
    'Services',
    'Projects',
    'Apps',
    'Contact',
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _scrollTo(int index) async {
    await ScrollService.scrollToKey(_keys[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: (_) => false,
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(key: _heroKey, child: HeroSection(onNavigate: _scrollTo)),
                SliverToBoxAdapter(key: _aboutKey, child: const AboutSection()),
                SliverToBoxAdapter(key: _skillsKey, child: const SkillsSection()),
                SliverToBoxAdapter(key: _servicesKey, child: const ServicesSection()),
                SliverToBoxAdapter(key: _projectsKey, child: const ProjectsSection()),
                SliverToBoxAdapter(key: _appsKey, child: const AppsSection()),
                SliverToBoxAdapter(key: _contactKey, child: const ContactSection()),
              ],
            ),
          ),
          StickyNavbar(
            labels: _labels,
            onItemTap: _scrollTo,
            scrollController: _scrollController,
            onMenuTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: const Color(0xFF0F172A),
                builder: (_) => MobileDrawer(
                  labels: _labels,
                  onItemTap: (i) {
                    Navigator.pop(context);
                    _scrollTo(i);
                  },
                ),
              );
            },
          ),
          ScrollProgressGlow(scrollController: _scrollController),
        ],
      ),
    );
  }
}
