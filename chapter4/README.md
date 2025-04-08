# Related work

## Discrete event

### MontiArc


Sources to execute the implementation of the running example can be found in `/related-work/montiarc-develop.zip`, a fork of [MontiArc](https://github.com/MontiCore/montiarc) that includes the running example.
The example is implemented in `/applications/crossing` alongside the other running examples described [online](https://github.com/MontiCore/montiarc).
The components in the example are the following:
#### Crossing

```
component Crossing {

  CarTrafficLight ctl;
  PedestrianTrafficLight ptl;

  ctl.signal -> ptl.signal;
}
```

#### PedestrianTrafficLight

```
component PedestrianTrafficLight {

  port
    <<sync>> in Signal signal;

  automaton {
      initial state Green;

      state Red;

      Red -> Green [signal == Signal.GREEN];

      Green -> Red [signal == Signal.RED];
    }
}
```
#### CarTrafficLight

```
component CarTrafficLight {

  port
    <<sync>> out Signal signal;

  automaton {
    initial state Red;

    state RedAmber;
    state Green;
    state Amber;

    Red -> RedAmber;

    RedAmber -> Green / {
      signal = Signal.RED;
    };

    Green -> Amber;

    Amber -> Red / {
      signal = Signal.GREEN;
    };
  }
}
```

### Lingua Franca

The Lingua Franca code for the running example is given in [Crossing.lf](./related-work/Crossing.lf).
To run it follow the instructions on the [Lingua Franca Website](https://www.lf-lang.org/docs/writing-reactors/a-first-reactor?target-languages=ts).
We ran the example using [Visual Studio Code and the LF extension](https://www.lf-lang.org/docs/installation).

Visual Studio Code should render the diagram as follows:

![LF diagram of the running example](./related-work/Crossing.svg)

Running the program should produce the following output (`Lingua Franca: Build and Run`):

```
>>>>>>>>>Scheduling timer crossing.ctl.changeState
Car traffic light is red.
Pedestrian traffic light is green.
INFO (reactor-ts): ================================================================================
INFO (reactor-ts): >>> Initializing
INFO (reactor-ts): >>> Spent (0 secs; 802816 nsecs) checking the precedence graph.
INFO (reactor-ts): ================================================================================
INFO (reactor-ts): ================================================================================
INFO (reactor-ts): >>> Start of execution: ((1738013495 secs; 685602048 nsecs), 0)
INFO (reactor-ts): ================================================================================

Car traffic light switches to red-amber!

Car traffic light switches to green!
Pedestrian traffic light switches to red!

Car traffic light switches to amber!

Car traffic light switches to red!
Pedestrian traffic light switches to green!

Car traffic light switches to red-amber!

Car traffic light switches to green!
Pedestrian traffic light switches to red!
...
```

### B-COoL

B-COoL uses the following coordination operator to implement the running example:

```
Operator CoordinationOfEvents(dse1 : sc1::occurs, dse2 : sc2::occurs)
    CorrespondenceMatching: when (dse1.id = dse2.id)
    CoordinationRule: RendezVous(dse1, dse2)
end operator
```

Unfortunately, we cannot provide an executable to test the specification.
However, it is similar to the examples discussed in the B-COoL literature.