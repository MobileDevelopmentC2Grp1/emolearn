import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';
import 'package:on_boarding/notification_service.dart';

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({super.key});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  late final Box box;

  bool notify = false;
  NotificationsService notificationsService = NotificationsService();

  @override
  void initState() {
    super.initState();
    // reference an already opened box
    box = Hive.box("settingsBox");
    // notificationsService.initializeNotifications();
  }

  @override
  void dispose() {
    super.dispose();
    // close all boxes
    Hive.close();
  }

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.check);
    }
    return const Icon(Icons.close);
  });

  _addNotifState(bool value) async {
    // Add notification status to settings box
    box.put("notify", value);
    return const Text('Settings updated');
  }

  _getNotifState() {
    // Get notification status from settings box
    var state = box.get("notify") ?? false;

    return state;
  }

  _updateNotifState(bool value) async {
    // Update notification status of settings box

    // if user activates switch
    if (value == true) {
      // ask for permission
      bool allow = await notificationsService.allowNotifications();
      print(allow);
      //
      if (allow == true) {
        notificationsService.sendNotification("Reminder", "Time to play!");
      } else {
        value = false;
      }
    }
    box.put("notify", value);
    print("Settings updated to $value");
  }

  _deleteNotifState() {
    // Delete notification status from settings box
    notificationsService.stopNotifications();
    box.put("notify", false);
    // box.delete("notify");
  }

  @override
  Widget build(BuildContext context) {
    // print(_getNotifState());

    // final state = _getNotifState() ?? "NULL";

    return FlutterSwitch(
        activeColor: const Color.fromRGBO(62, 20, 82, 1.0),
        activeToggleColor: const Color.fromRGBO(140, 214, 92, 1.0),
        height: 28.0,
        width: 56.0,
        value: _getNotifState(),
        onToggle: (value) {
          setState(() {
            notify = value;
            if (notify == true) {
              _updateNotifState(notify);
            } else if (notify == false) {
              _deleteNotifState();
            }
            print(_getNotifState());
          });
        });
  }
}
