#import "@preview/mousse-notes:2.0.1": *

// boilerplate shit
#set document(title: [Physics I], author: "Davud Ibrahim")

#set page(paper: "us-letter")

#show: style

#title-page(
  subtitle: upper[Mechanics],
  primary: [
    Instructor: Gulmammad Gulmammadov
  ],

  secondary: [
    #upper[ADA UNIVERSITY \ Fall 2026]

    #v(4em)

    #align(center, image("imgs/book-cover.png", width: 50%))
  ],
)


= 7. Energy of a system

#epigraph(attribution: [:(])[
  I apologize for the fact that these notes start after Midterm 1.
]

== Systems and Environments

In the system model, we focus our attention on a small portion of the Universe—
the _*system*_—and ignore details of the rest of the Universe outside of the system.
A critical skill in applying the system model to problems is identifying the system.
\
\
Everything that is outside the system, is the _*Environment*_.

== Work done by a constant force

The work $W$ done on a system by an agent exerting a constant force on the
system is the product of the magnitude $F$ of the force, the magnitude $Delta r$ of
the displacement of the point of application of the force, and $cos(theta)$, where $theta$ is
the angle between the force and displacement vectors:

$
  W = F Delta r cos(theta)
$


== Kinetic Energy and the Work-Kinetic Energy Theorem

=== Work

Work describes the energy transferred from an object over displacement.
\

Force can only be parallel to displacement

$
  W = arrow(F) dot Delta arrow(r)
  = abs(arrow(F)) abs(Delta arrow(r)) cos(theta)
$

$
  1 J = 1 N dot m
$

Work on a variable force below
$
  W = integral_(r_i)^(r_f) arrow(F) dot d arrow(r)
$

=== Kinetic Energy

Kinetic energy is the energy associated with an object's motion; it is *scalar* and *non negative*:
$
  K = 1/2 m v^2
$


=== Work-Kinetic Energy Theorem

The net work done on an object equals its change in kinetic energy:
$
  W_"net" = Delta K = K_f - K_i
$

$
  W_"net" = 1/2 m v_f^2 - 1/2 m v_i^2
$


- Positive net work increases kinetic energy.
- Negative net work decreases kinetic energy.
- Zero net work means kinetic energy remains constant; velocity may still change direction.

=== $W_"net"$ vs. $W_"ext"$

TODO: understand better

These are NOT automatically the same thing.

- $W_"net"$: total work done by all forces acting on the object. It is the sum of the work done by each force:
$
  W_"net" = sum_i W_i = Delta K
$

- $W_"ext"$: work done by external forces on a chosen system. A force is external if it originates outside the system boundary.

#example[a box slides across a rough floor while I push it horizontally.

  $
    W_"net" = W_"push" + W_"friction"
  $

  Gravity and the normal force do zero work because the displacement is horizontal.

  If I define $W_"ext"$ as only the work done by my applied push, then:
  $
    W_"ext" = W_"push" != W_"net"
  $

  The difference is the negative work done by friction.

  However, if I define $W_"ext"$ as the sum of the work done by ALL external forces on the box, then:
  $ W_"ext" = W_"net" $]

because every force acting on the box is external to the box-as-system.

Important: when the system includes multiple interacting objects, internal and external forces must be distinguished using that system boundary. In energy methods, external work may refer specifically to work by an external agent, excluding conservative forces represented through potential energy.

=== Easy Problem-Solving Procedure

1. Identify the object or system and its initial/final states.
2. Draw a free-body diagram and identify all forces.
3. Calculate the work done by each force using $W_i = F_i d cos(theta_i)$ for constant forces.
4. Sum the work contributions to obtain $W_"net"$.
5. Apply $W_"net" = Delta K$ and solve for the unknown.

Always distinguish work done by one force from net work. Never substitute $W_"ext"$ for $W_"net"$ without checking what the notation means in the problem.
== 7.6 Potential Energy of a System

== Useful Formulas

=== Component of vector a along vector b

@vector-component-angle is the formula for the component of $arrow(a)$ along $arrow(b)$ if you know the angle between them


$
  a_b = abs(arrow(a))*cos(alpha)
$ <vector-component-angle>



@vector-component-no-angle is the formula for the component of $arrow(a)$ along $arrow(b)$ if you don't.

$
  a_b = op("comp")_(arrow(b)) arrow(a) = (arrow(a) dot arrow(b)) / abs(arrow(b))
$ <vector-component-no-angle>



= 8. Conservation Of Energy


#epigraph(attribution: [:B])[
  I skipped the last 2 lessons. Sorry.
]

== 8.1 Analysis Model: Nonisolated System (Energy)


=== Definition of Potential Energy

Potential energy is stored in the configuration of the system.

=== Heat energy

1. Kinetic energy of atoms is trasnferred to neighbouring atoms, lower heat levels have lower kinetic energy, and higher heat has higher kinetic energy within those atoms. They rub together and balance out. Heat is the mechanism for that type of energy transfer. THERE IS NO TYPE OF ENERGY SUCH AS HEAT ENERGY!

2. Even if there is no change in the configuration of a system (*potential energy*), nor the *kinetic energy* within a system, there can still be change within the energy of a system.

3. That energy is called *Heat*. As an example; when you rub some stuff together, you see that there is some heat generated.

=== $Delta E$ of the system | Conservation of energy.

$
  Delta K + Delta U + Delta E_"internal" = W + Q + T_"MW" + T_"MT" + T_"ET" + T_"ER"
$


- Work $W$
- Heat (explained in ch 2.1.2) $Q$
- Mechanical waves $M W$
  - Sound - matter is needed for sound transfer. Sound doesn't transfer in a vacuum, such as space.
  - Sound is the oscillation of matter in air.
- Matter transfer $M T$
  - Like water flowing out of a cup.
- Electrical transfer $E T$
  - This is a type of energy. Electricity is energy. #footnote[Need to study this  better, I actually dont know what this is ]
- Electromagnetic radiation $E R$
  - Anything above 0 Kelvin emits electromagnetic energy.


1. if the system is warmer than it's environment, the environment will recieve some energy from the system.

2. $Q$ is heat here.

3. If the matter or the configuration of the system changes, nothing changes with regards to the energy. That is self contained within the system.

4. The reason you see different colors is that certain materials reflect different colors. If you look at a blue pen, it takes in all the other colors but reflects blue (at a high level, it reflects a certain percentage of every color, that's why we have different shades). That is why you see blue. #footnote[I wonder why blue is rare in nature because of this?]



== 8.2 Analysis Model: isolated system (Energy)

$
  Delta K + Delta U = 0
$

$
  K_i + U_i = K_f + U_f = E_"mech"
$ <conservation-of-mechanical-energy>


1. @conservation-of-mechanical-energy is NOT derived. it comes from years of observation. #footnote[I wonder which observations lead to it, and why is it rigorous then?] It is called the convervation of mechanical energy.

2. If the system is isolated:
- Only if the system is not interacting with the environment, therefore the forces should be present within the parts of the system. That is why it's equal to 0.
3. Only conservative forces are acting on the object (forces that do not change based on the path taken)

=== The Applied Formula:

$
  m v^2/2+m g h=K+0
$

$
  1. Delta K + 0 + 0 = m g h
$

$
  2. K - m v^2 / 2 = m g h
$

I dont understand this? //TODO:



