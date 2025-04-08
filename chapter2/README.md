# Model Checking Example
This folder contains the BPMN files from the model checking section and our tool for running model checks on them.


## Erroneous process
Model check the erroneous order handling process using the following command:

**Linux:**
```bash
./rust_bpmn_analyzer_cli -f order_handling.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
```
You might have to make the file executable on Linux before.

**Windows:**
```bash
./rust_bpmn_analyzer_cli.exe -f order_handling.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
```

### Example output
```text
❯ ./rust_bpmn_analyzer_cli_linux -f order_handling.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
State space generation successful in 23.4µs!
States: 5, Transitions: 4
Terminated states: 0

Option to complete is not fulfilled.
    Counter example: messages: {}, snapshots: { Order_handling: {"Flow_1": 1} } --EG--> messages: {}, snapshots: { Order_handling: {"Flow_2": 1} } --Retrieve_payment--> messages: {}, snapshots: { Order_handling: {"Flow_4": 1} }
Safeness is fulfilled.
Proper completion is fulfilled.
No dead activities is not fulfilled.
   The activity ["SP"] cannot be executed.
```
Option to complete is not fulfilled, equivalent to the LTL formula (2.1) in the thesis.
One can see the counter example discussed in Chapter 3 in the output of **Option to complete**.

The counter example can also be visualized online.
Open [the tool](https://timkraeuter.com/bpmn-analyzer-js?model=orderHandling) and click on _Guaranteed termination_ in the top right to launch the visualization.
The tool uses the same analyzer as the CLI tool above but provides a visualization on top of the textual counter example.
## Fixed process
Model check the fixed order handling process using the following command:

**Linux:**
```bash
./rust_bpmn_analyzer_cli -f order_handling_fixed.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
```
You might have to make the file executable on Linux before.

**Windows:**
```bash
./rust_bpmn_analyzer_cli.exe -f order_handling_fixed.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
```

### Example output
```text
❯ ./rust_bpmn_analyzer_cli_linux -f order_handling_fixed.bpmn -p safeness,option-to-complete,proper-completion,no-dead-activities
State space generation successful in 26µs!
States: 8, Transitions: 8
Terminated states: 1

Safeness is fulfilled.
Option to complete is fulfilled.
Proper completion is fulfilled.
No dead activities is fulfilled.
```

Option to complete is now fulfilled, equivalent to the LTL formula (2.1) in the thesis.

# Maude State Machine Example

The Maude state machine example is contained in `simple-state-machines.maude`.
It can be run using the following command:

```bash
maude simple-state-machines.maude
```

# Graph Transformation Example

The Groove graph transformation system is located in `simple-state-machines.gps`.
It can be loaded in Groove using `File > Load Grammar`.
Installation instructions for Groove can be found [here](https://groove.cs.utwente.nl/installing.html).

One can verify the property `F(IsInStateX)` (eventually is in state X) using `Verify > Check LTL property (full state space)` and then paste the property there.
The property holds for the start graph `stateMachineConfiguration1` but not for `stateMachineConfiguration2` and `stateMachineConfiguration3`.
One selects a start graph by clicking on it at the bottom left and selecting the right-most tick button (`Enable this host graph, and disable all other host graphs`).