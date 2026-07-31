import 'package:flutter/material.dart';

class NotificationFilter extends StatelessWidget {

  final List<String> filters;

  final int selectedIndex;

  final Function(int) onSelected;

  const NotificationFilter({
    super.key,
    required this.filters,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        itemCount: filters.length,

        separatorBuilder: (_, __) =>
        const SizedBox(width: 10),

        itemBuilder: (_, index) {

          final selected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onSelected(index),

            child: AnimatedContainer(
              duration:
              const Duration(milliseconds: 250),

              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: selected
                    ? const Color(0xff8B5CF6)
                    : const Color(0xff26222D),

                borderRadius:
                BorderRadius.circular(30),
              ),

              child: Center(
                child: Text(
                  filters[index],

                  style: TextStyle(
                    color: selected
                        ? Colors.white
                        : Colors.white60,

                    fontWeight: FontWeight.w600,

                    fontSize: 12,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}