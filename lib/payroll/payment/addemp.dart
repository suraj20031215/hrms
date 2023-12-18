import 'package:flutter/material.dart';



enum ColorLabel {
  blue('Desinger',Colors.black),
  pink('Pink', Colors.black),
  green('Green',Colors.black),
  yellow('Orange', Colors.black),
  grey('Grey',Colors.black);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum WorkDay {
  wday('Select working day', Colors.black),
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

class AddEmp extends StatefulWidget {
  const AddEmp({super.key});


  @override
  State<AddEmp> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmp> {

  TextEditingController dateInputController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: const Text('Add Employee '),
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
                  Padding(
                    padding: const EdgeInsets.only(left:10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox(
                              width: 100,
                              height: 120,
                              // margin: const EdgeInsets.only(
                              //     right: 30, left: 30),
                              child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/emp.png')
                              )
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            width: 200,
                            height: 150,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 5),
                                    child: TextFormField(decoration: const InputDecoration(
                                      suffixIcon: Icon(Icons.date_range_rounded),

                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1)),

                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),

                                      // labelStyle:TextStyle(color: Colors.blue),
                                      labelText: 'Joining Date',

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

                                Container(margin: EdgeInsets.only(top: 10),
                                  height: 70,
                                  child:
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 1),
                                      child: TextFormField(
                                          decoration: const InputDecoration(
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),


                                              // labelStyle:TextStyle(color: Colors.blue),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 1)),

                                              labelText: 'Employee ID'
                                          )
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        // labelStyle:TextStyle(color: Colors.blue),
                        labelText: 'Full Name'
                    )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        // labelStyle:TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        labelText: 'Mobile Number'
                    )
                    ),
                  ),


                  Container(
                    width: double.infinity,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownMenu<ColorLabel>(
                        width: 378,
                        initialSelection: ColorLabel.green,
                        requestFocusOnTap: true,
                        label: const Text('Designation'),
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
                      child: DropdownMenu<WorkDay>(
                        width: 378,
                        initialSelection:WorkDay.wday,
                        requestFocusOnTap: true,
                        label: const Text('Working Day'),
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


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                      // labelStyle:TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)),
                      labelText: 'Employee ID',

                    )
                    ),
                  ),


                  Container(
                    width: double.infinity,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownMenu<WorkDay>(
                        width: 370,
                        initialSelection:WorkDay.wday,
                        requestFocusOnTap: true,
                        label: const Text('Working Day'),
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
                      margin: EdgeInsets.all(10),

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
