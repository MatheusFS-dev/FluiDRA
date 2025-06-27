![header](https://capsule-render.vercel.app/api?height=190&type=blur&color=4ea7f7&section=header&text=FluiDRA&fontColor=f8f8f2&fontSize=40)


<p align="center">
<a href="https://github.com/DenverCoder1/readme-typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=Time+New+Roman&color=%234ea7f7&size=25&center=true&vCenter=true&width=600&height=30&lines=👋+Welcome!"></a>
</p>

A **Fluid Antenna System** (FAS) dynamically reconfigure a single RF front-end across N antenna ports to exploit spatial diversity and avoid deep fades or interference. This project evaluates an ML-driven port-selection scheme for FAS operating over κ-μ shadowed fading channels, a generalized model that encompasses Rayleigh, Rician, Nakagami-m and shadowed scenarios typical in urban/indoor environments.

We cast port selection as a multivariate regression problem: given instantaneous SNR measurements from a small subset of ports (n ≪ N), a neural network predicts the channel gains across all N ports. A neural-architecture search (Optuna TPE) optimizes among Dense, Conv1D, Conv1DTranspose, and LSTM backbones, trading off accuracy and inference latency by limiting the number of observed ports.

Experiments (using channel data generated via the Kappa-Mu Shadowed MATLAB codes) show that with as few as five observed ports, our ML-driven FAS achieves near-ideal outage probability, demonstrating its potential for low-latency, high-reliability beyond-5G (B5G) and 6G applications.

## Table of Contents

- [Table of Contents](#table-of-contents)
- [📖 Our Publications](#-our-publications)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)
- [🤝 Collaborators](#-collaborators)


## 📖 Our Publications

- [TODO](TODO)


## 🤝 Contributing

> [!IMPORTANT]
> First read the [CONTRIBUTING.md](CONTRIBUTING.md) file.

Contributions are what make the open-source community amazing. To contribute:

1. Fork the project.
2. Create a feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.


## 📜 License

This project is licensed under the **[General Public License](LICENSE)**.


## 🤝 Collaborators

We thank the following people who contributed to this project:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/MatheusFS-dev" title="Matheus Ferreira">
        <img src="https://avatars.githubusercontent.com/u/99222557" width="100px;" alt="Foto do Matheus Ferreira no GitHub"/><br>
        <sub>
          <b>Matheus Ferreira</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/FelipeLSSF-engineer" title="Felipe Lorenzo Sossai Silva Forza">
        <img src="https://avatars.githubusercontent.com/u/99219044" width="100px;" alt="Foto do Felipe Lorenzo Sossai Silva Forza no GitHub"/><br>
        <sub>
          <b>Felipe Lorenzo</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/ErosloursViv" title="Pedro Marcio">
        <img src="https://avatars.githubusercontent.com/u/152238742" width="100px;" alt="Foto do Pedro Marcio no GitHub"/><br>
        <sub>
          <b>Pedro Marcio</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/zz4fap" title="Felipe Augusto">
        <img src="https://avatars.githubusercontent.com/u/1381827" width="100px;" alt="Foto do Felipe Augusto no GitHub"/><br>
        <sub>
          <b>Felipe Augusto</b>
        </sub>
      </a>
    </td>
  </tr>
</table>
