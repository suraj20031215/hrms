import 'package:flutter/material.dart';



enum ColorLabel {
  blue('Suraj',Colors.black),
  pink('Suresh', Colors.black),
  green('Sachin',Colors.black),
  yellow('ROHIT', Colors.black),
  grey('AAkash',Colors.black);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum WorkDay {
  wday('Marketing', Colors.black),
  sunday('Sunday', Colors.black),
  monday('Monday', Colors.black),
  tuesday('Tuesday', Colors.black),
  wednesday('Wednesday', Colors.black),
  thursday('Thursday', Colors.black),
  friday('Friday', Colors.black),
  Saturday('Saturday', Colors.black);

  const WorkDay(this.label, this.color);
  final String label;
  final Color color;
}

class AddIncrement extends StatefulWidget {
  const AddIncrement({super.key});


  @override
  State<AddIncrement> createState() => _AddIncrementState();
}

class _AddIncrementState extends State<AddIncrement> {

  TextEditingController dateInputController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: const Text('Add Increment'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
        ),

        body: Container(
          margin: const EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                  topRight: Radius.circular(40))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [



                  SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownMenu<ColorLabel>(
                        width: 378,
                        initialSelection: ColorLabel.green,
                        requestFocusOnTap: true,
                        label: const Text('Select Employee'),
                        onSelected: (ColorLabel? color) {
                          setState(() {
                            // selectedColor = color;
                          });
                        },
                        dropdownMenuEntries: ColorLabel.values
                            .map<DropdownMenuEntry<ColorLabel>>(
                                (ColorLabel color) {
                              return DropdownMenuEntry<ColorLabel>(
                                value: color,
                                label: color.label,
                                // enabled: color.label != 'Grey',
                                // style: MenuItemButton.styleFrom(
                                //   foregroundColor: color.color,
                                // ),
                              );
                            }).toList(),
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 70,

                    child:  Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.date_range_rounded),

                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),

                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),

                        // labelStyle:TextStyle(color: Colors.blue),
                        labelText: 'Increment Date',

                      ),


                        controller: dateInputController,
                        // readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2024));

                          if (pickedDate != null) {
                            dateInputController.text =pickedDate.toString();
                          }
                        },
                      ),

                    ),

                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                      // labelStyle:TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)),
                      labelText: 'Expence Amount',

                    )
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 70,

                    child:  Padding(
                      padding: const EdgeInsets.all(8),
                      child: DropdownMenu<WorkDay>(
                        width: 378,
                        initialSelection:WorkDay.wday,
                        requestFocusOnTap: true,
                        label: const Text('Increment Amount'),
                        onSelected: (WorkDay? color) {
                          setState(() {
                            // selectedColor = color;
                          });
                        },
                        dropdownMenuEntries: WorkDay.values
                            .map<DropdownMenuEntry<WorkDay>>(
                                (WorkDay color) {
                              return DropdownMenuEntry<WorkDay>(
                                value: color,
                                label: color.label,
                                enabled: color.label != 'wday',
                                style: MenuItemButton.styleFrom(
                                  foregroundColor: color.color,
                                ),
                              );
                            }).toList(),

                      ),
                    ),

                  ),



                  Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.all(10),

                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300,),
                          onPressed: (){},
                          child: const Text('Save',
                            style: TextStyle(color: Colors.white),)
                      )
                  )
                ],
              ),
            ),
          ),

        )

    );

  }
}
