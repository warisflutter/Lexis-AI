import 'package:flutter/material.dart';

class ChatFilter extends StatelessWidget {
  final List<String> filters;
  final int selectedIndex;
  final Function(int) onSelected;

  const ChatFilter({
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

          final selected = selectedIndex == index;

          return InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () => onSelected(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),

              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: selected
                    ? const Color(0xffB784F7)
                    : const Color(0xff2A2337),

                borderRadius: BorderRadius.circular(30),

                border: Border.all(
                  color: selected
                      ? Colors.transparent
                      : Colors.white.withOpacity(.05),
                ),
              ),

              child: Center(
                child: Text(
                  filters[index],
                  style: TextStyle(
                    color: selected
                        ? Colors.white
                        : Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
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