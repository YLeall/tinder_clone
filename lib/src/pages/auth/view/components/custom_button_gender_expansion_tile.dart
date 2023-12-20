import 'package:flutter/material.dart';

class CustomButtonGenderExpansionTile extends StatefulWidget {
  const CustomButtonGenderExpansionTile({
    super.key,
    required this.subTitle,
    required this.description,
    required this.isSelectedGenderTile,
    this.onTap,
    this.marginBottom = 8,
  });
  final String subTitle;
  final String description;
  final bool isSelectedGenderTile;
  final VoidCallback? onTap;
  final double marginBottom;

  @override
  State<CustomButtonGenderExpansionTile> createState() =>
      _CustomButtonGenderExpansionTileState();
}

class _CustomButtonGenderExpansionTileState
    extends State<CustomButtonGenderExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.only(
          bottom: widget.marginBottom,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: widget.isSelectedGenderTile
                ? const Color(0xFFFE5048)
                : Colors.grey.shade600,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.subTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                widget.isSelectedGenderTile
                    ? const SizedBox(
                        height: 20,
                        child: Icon(
                          Icons.check,
                          color: Color(0xFFFE5048),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.description,
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
