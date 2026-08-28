#!/usr/bin/env python3
"""Lotka-Volterra predator-prey experiment.

Model adapted from Stephen Wilkerson, "Predator-Prey Model",
Wolfram Demonstrations Project (2011), CC BY-NC-SA:
https://demonstrations.wolfram.com/PredatorPreyModel/

The numerical parameter set below matches Wolfram's documented
Lotka-Volterra example:

    x' = x (1 - y/2)
    y' = y (-3/4 + x/4)
    x(0) = 2
    y(0) = 1

x = prey (rabbits)
y = predators (foxes)
"""

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter

A = 1.0
ALPHA = 0.5
C = 0.75
GAMMA = 0.25

X0 = 2.0
Y0 = 1.0
T0 = 0.0
T1 = 30.0
DT = 0.01


def rhs(x, y):
    dx = A * x - ALPHA * x * y
    dy = -C * y + GAMMA * x * y
    return dx, dy


def rk4_step(x, y, h):
    k1x, k1y = rhs(x, y)
    k2x, k2y = rhs(x + h * k1x / 2, y + h * k1y / 2)
    k3x, k3y = rhs(x + h * k2x / 2, y + h * k2y / 2)
    k4x, k4y = rhs(x + h * k3x, y + h * k3y)
    return (
        x + h * (k1x + 2 * k2x + 2 * k3x + k4x) / 6,
        y + h * (k1y + 2 * k2y + 2 * k3y + k4y) / 6,
    )


def solve():
    t = np.arange(T0, T1 + DT, DT)
    x = np.empty_like(t)
    y = np.empty_like(t)
    x[0], y[0] = X0, Y0

    for i in range(1, len(t)):
        x[i], y[i] = rk4_step(x[i - 1], y[i - 1], DT)

    return t, x, y


def population_plot(t, x, y):
    fig, ax = plt.subplots(figsize=(9, 5))
    ax.plot(t, x, label="rabbits")
    ax.plot(t, y, label="foxes")
    ax.set_xlabel("time")
    ax.set_ylabel("population")
    ax.set_title("Lotka-Volterra predator-prey populations")
    ax.legend()
    fig.tight_layout()
    fig.savefig("lotka_volterra_timeseries.png", dpi=160)
    plt.close(fig)


def phase_plot(x, y):
    fig, ax = plt.subplots(figsize=(6, 6))
    ax.plot(x, y)
    ax.scatter([x[0]], [y[0]], label="start")
    ax.set_xlabel("rabbits")
    ax.set_ylabel("foxes")
    ax.set_title("Lotka-Volterra phase plane")
    ax.legend()
    fig.tight_layout()
    fig.savefig("lotka_volterra_phase.png", dpi=160)
    plt.close(fig)


def phase_animation(x, y):
    stride = 10
    xa = x[::stride]
    ya = y[::stride]

    fig, ax = plt.subplots(figsize=(6, 6))
    pad_x = 0.05 * (xa.max() - xa.min())
    pad_y = 0.05 * (ya.max() - ya.min())
    ax.set_xlim(max(0, xa.min() - pad_x), xa.max() + pad_x)
    ax.set_ylim(max(0, ya.min() - pad_y), ya.max() + pad_y)
    ax.set_xlabel("rabbits")
    ax.set_ylabel("foxes")
    ax.set_title("Lotka-Volterra phase-plane orbit")

    line, = ax.plot([], [])
    point, = ax.plot([], [], marker="o")

    def update(i):
        line.set_data(xa[: i + 1], ya[: i + 1])
        point.set_data([xa[i]], [ya[i]])
        return line, point

    animation = FuncAnimation(fig, update, frames=len(xa), interval=35, blit=True)
    animation.save("lotka_volterra_phase.gif", writer=PillowWriter(fps=24))
    plt.close(fig)


def main():
    t, x, y = solve()
    population_plot(t, x, y)
    phase_plot(x, y)
    phase_animation(x, y)

    print(f"rabbits: min={x.min():.4f}, max={x.max():.4f}")
    print(f"foxes:   min={y.min():.4f}, max={y.max():.4f}")


if __name__ == "__main__":
    main()
