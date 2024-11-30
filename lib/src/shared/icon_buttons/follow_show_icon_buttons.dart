import 'package:flutter/material.dart';

class FollowShowIconButton extends StatefulWidget {
  const FollowShowIconButton({super.key});

  @override
  State<FollowShowIconButton> createState() => _FollowShowIconButtonState();
}

class _FollowShowIconButtonState extends State<FollowShowIconButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isLoading,
      replacement: const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      child: IconButton(
        icon: const Icon(Icons.my_library_add_rounded),
        onPressed: () async {
          setState(() {
            _isLoading = true;
          });
          print('follow show button pressed');
          // await _call trx to follow show
          print('follow show button done');
        },
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}

class UnFollowShowIconButton extends StatefulWidget {
  const UnFollowShowIconButton({super.key});

  @override
  State<UnFollowShowIconButton> createState() => _UnFollowShowIconButtonState();
}

class _UnFollowShowIconButtonState extends State<UnFollowShowIconButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isLoading,
      replacement: const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      child: IconButton(
        icon: Icon(Icons.library_add_check_outlined),
        onPressed: () async {
          setState(() {
            _isLoading = true;
          });
          print('unfollow show button pressed');
          // await _call trx to follow show
          print('unfollow show button done');
        },
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
