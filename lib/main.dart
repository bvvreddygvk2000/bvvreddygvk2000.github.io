import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

// ============================================================
// MAIN APP
// ============================================================

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vishnu Vardan Reddy | Portfolio',

      // --------------------------------------------------------
      // NAMED ROUTES
      // --------------------------------------------------------

      initialRoute: '/',

      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },

      // --------------------------------------------------------
      // APPLICATION THEME
      // --------------------------------------------------------

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF172554),
          brightness: Brightness.light,
        ),

        scaffoldBackgroundColor: const Color(0xFFF5F7FA),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF172554),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF172554),
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        cardTheme: CardThemeData(
          elevation: 2,
          color: Colors.white,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// HOME PAGE
// ============================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive design using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;

    final double contentWidth =
        screenWidth > 850 ? 760 : screenWidth - 32;

    final double avatarRadius =
        screenWidth < 400 ? 62 : 72;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VISHNU VARDAN REDDY',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'PORTFOLIO',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withValues(alpha: 0.75),
                  letterSpacing: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 30,
            ),

            // --------------------------------------------------
            // MAIN CONTAINER
            // --------------------------------------------------

            child: Container(
              width: contentWidth,

              padding: EdgeInsets.symmetric(
                horizontal: screenWidth < 500 ? 22 : 45,
                vertical: 38,
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25,
                    offset: Offset(0, 10),
                  ),
                ],
              ),

              // ------------------------------------------------
              // COLUMN
              // ------------------------------------------------

              child: Column(
                children: [

                  // ==================================================
                  // PROFILE SECTION
                  // STACK + CIRCLE AVATAR + NETWORK IMAGE
                  // ==================================================

                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [

                      // ------------------------------------------------
                      // CIRCLE AVATAR
                      // ------------------------------------------------

                      CircleAvatar(
                        radius: avatarRadius,

                        backgroundColor:
                            const Color(0xFF172554),

                        // Exam requirement:
                        // Profile image using NetworkImage
                        backgroundImage: const NetworkImage(
                          'assets/vvr.jpeg',
                        ),
                      ),

                      // ------------------------------------------------
                      // ACTIVE STATUS
                      // ------------------------------------------------

                      Container(
                        width: 25,
                        height: 25,

                        decoration: BoxDecoration(
                          color: const Color(0xFF16A34A),
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // ==================================================
                  // NAME
                  // ==================================================

                  const Text(
                    'B Vishnu Vardan Reddy',

                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172554),
                      letterSpacing: 0.3,
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ==================================================
                  // DESIGNATION
                  // ==================================================

                  Text(
                    'B.Tech Computer Science Engineering Student',

                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // ==================================================
                  // COLLEGE
                  // ==================================================

                  Text(
                    'CRRAO AIMSCS',

                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      letterSpacing: 1,
                    ),
                  ),

                  const SizedBox(height: 28),

                  // ==================================================
                  // DIVIDER
                  // ==================================================

                  const Divider(
                    thickness: 1,
                    indent: 40,
                    endIndent: 40,
                  ),

                  const SizedBox(height: 25),

                  // ==================================================
                  // INTRODUCTION
                  // ==================================================

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                      ),
                    ),

                    child: Text(
                      'Focused on learning, problem solving and '
                      'building creative technology solutions. '
                      'Passionate about programming, software '
                      'development and exploring new technologies.',

                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 15.5,
                        height: 1.6,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // ==================================================
                  // BUTTON SECTION
                  // ==================================================

                  screenWidth < 600

                      // ------------------------------------------------
                      // MOBILE LAYOUT
                      // ------------------------------------------------

                      ? Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: _NavigationButton(
                                icon: Icons.person_outline,
                                label: 'About Me',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/about',
                                  );
                                },
                              ),
                            ),

                            const SizedBox(height: 12),

                            SizedBox(
                              width: double.infinity,
                              child: _NavigationButton(
                                icon: Icons.work_outline,
                                label: 'Projects',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/projects',
                                  );
                                },
                              ),
                            ),
                          ],
                        )

                      // ------------------------------------------------
                      // DESKTOP / TABLET LAYOUT
                      // ------------------------------------------------

                      : Row(
                          children: [
                            Expanded(
                              child: _NavigationButton(
                                icon: Icons.person_outline,
                                label: 'About Me',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/about',
                                  );
                                },
                              ),
                            ),

                            const SizedBox(width: 15),

                            Expanded(
                              child: _NavigationButton(
                                icon: Icons.work_outline,
                                label: 'Projects',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/projects',
                                  );
                                },
                              ),
                            ),
                          ],
                        ),

                  const SizedBox(height: 30),

                  // ==================================================
                  // FOOTER
                  // ==================================================

                  Text(
                    'LEARN • BUILD • CREATE',

                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade500,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// REUSABLE NAVIGATION BUTTON
// ============================================================

class _NavigationButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _NavigationButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,

      icon: Icon(
        icon,
        size: 20,
      ),

      label: Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

// ============================================================
// ABOUT PAGE
// ============================================================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 850,
            ),

            child: Padding(
              padding: EdgeInsets.all(
                screenWidth < 500 ? 18 : 30,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  // ==================================================
                  // PAGE HEADING
                  // ==================================================

                  const Text(
                    'About Me',

                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172554),
                    ),
                  ),

                  const SizedBox(height: 7),

                  Text(
                    'Background, skills and interests',

                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ==================================================
                  // ABOUT DESCRIPTION
                  // ==================================================

                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(24),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),

                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),

                    child: const Text(
                      'Hello! I am B Vishnu Vardan Reddy, currently '
                      'pursuing a Bachelor of Technology in Computer '
                      'Science Engineering at CRRAO AIMSCS. I am a '
                      'focused, dedicated and fast-learning student '
                      'with an interest in programming, problem solving '
                      'and technology. I enjoy exploring new ideas, '
                      'working in teams and completing projects within '
                      'deadlines.',

                      style: TextStyle(
                        fontSize: 16,
                        height: 1.7,
                        color: Color(0xFF334155),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ==================================================
                  // SKILLS & STRENGTHS
                  // ==================================================

                  const Text(
                    'Skills & Strengths',

                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172554),
                    ),
                  ),

                  const SizedBox(height: 15),

                  _InfoCard(
                    icon: Icons.code,
                    title: 'Programming',
                    description: 'C, Java and Python',
                  ),

                  const SizedBox(height: 12),

                  _InfoCard(
                    icon: Icons.groups_outlined,
                    title: 'Soft Skills',
                    description:
                        'Communication, Leadership, Teamwork '
                        'and Time Management',
                  ),

                  const SizedBox(height: 12),

                  _InfoCard(
                    icon: Icons.lightbulb_outline,
                    title: 'Strengths',
                    description:
                        'Focus, Patience, Dedication, Creativity '
                        'and Positive Attitude',
                  ),

                  const SizedBox(height: 30),

                  // ==================================================
                  // INTERESTS
                  // ==================================================

                  const Text(
                    'Interests',

                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172554),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      color: const Color(0xFFEEF2FF),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,

                      children: const [
                        _InterestChip(
                          icon: Icons.sports_tennis,
                          label: 'Badminton',
                        ),

                        _InterestChip(
                          icon: Icons.fitness_center,
                          label: 'Gym',
                        ),

                        _InterestChip(
                          icon: Icons.show_chart,
                          label: 'Stocks',
                        ),

                        _InterestChip(
                          icon: Icons.explore_outlined,
                          label: 'Exploring',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  // ==================================================
                  // BACK TO HOME
                  // ==================================================

                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      icon: const Icon(
                        Icons.arrow_back,
                      ),

                      label: const Text(
                        'Back to Home',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// INFORMATION CARD
// ============================================================

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            width: 45,
            height: 45,

            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FF),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Icon(
              icon,
              color: const Color(0xFF172554),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF172554),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  description,

                  style: TextStyle(
                    fontSize: 14.5,
                    height: 1.5,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// INTEREST CHIP
// ============================================================

class _InterestChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InterestChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 9,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Icon(
            icon,
            size: 17,
            color: const Color(0xFF172554),
          ),

          const SizedBox(width: 7),

          Text(
            label,

            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w600,
              color: Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PROJECTS PAGE
// ============================================================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Projects',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 900,
          ),

          child: Padding(
            padding: EdgeInsets.all(
              screenWidth < 500 ? 18 : 30,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // ==================================================
                // PAGE HEADING
                // ==================================================

                const Text(
                  'Selected Projects',

                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF172554),
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  'Academic and personal technology projects',

                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 22),

                // ==================================================
                // LISTVIEW
                // ==================================================

                Expanded(
                  child: ListView(
                    children: const [

                      // ------------------------------------------------
                      // PROJECT 1
                      // ------------------------------------------------

                      ProjectCard(
                        number: '01',
                        icon: Icons.account_tree_outlined,
                        title: 'Hierarchical Clustering Project',

                        description:
                            'Implemented hierarchical clustering to '
                            'group large datasets based on similarity. '
                            'Applied unsupervised learning techniques '
                            'and visualized clustering results for '
                            'better analysis.',
                      ),

                      // ------------------------------------------------
                      // PROJECT 2
                      // ------------------------------------------------

                      ProjectCard(
                        number: '02',
                        icon: Icons.bluetooth_audio,
                        title: 'Wireless Sound Control System',

                        description:
                            'Developed a Python-based application to '
                            'control system audio settings wirelessly '
                            'using Bluetooth. Implemented remote '
                            'volume control and mute functionality '
                            'for convenient audio management.',
                      ),

                      // ------------------------------------------------
                      // PROJECT 3
                      // ------------------------------------------------

                     
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // ==================================================
                // BACK TO HOME
                // ==================================================

                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    icon: const Icon(
                      Icons.home_outlined,
                    ),

                    label: const Text(
                      'Back to Home',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// REUSABLE PROJECT CARD
// ============================================================

class ProjectCard extends StatelessWidget {
  final String number;
  final IconData icon;
  final String title;
  final String description;

  const ProjectCard({
    super.key,
    required this.number,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 18),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // ==================================================
            // PROJECT ICON
            // ==================================================

            Container(
              width: 58,
              height: 58,

              decoration: BoxDecoration(
                color: const Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(
                icon,
                size: 27,
                color: const Color(0xFF172554),
              ),
            ),

            const SizedBox(width: 16),

            // ==================================================
            // PROJECT DETAILS
            // ==================================================

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  // Project number
                  Text(
                    'PROJECT $number',

                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                      color: Color(0xFF64748B),
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Project title
                  Text(
                    title,

                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172554),
                    ),
                  ),

                  const SizedBox(height: 9),

                  // Project description
                  Text(
                    description,

                    style: TextStyle(
                      fontSize: 14.5,
                      height: 1.55,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}