<span style="font-size: 1.5em; font-weight: bold;">Outage Probability and SNR</span>

The outage probability is based on the instantaneous SNR:

$$
\text{SNR}_{\text{inst}} = \max \left( \frac{|g|^2}{\operatorname{var}(\text{noise})} \right)
$$

where \( g \) is the channel gain, and var( noise ) is the noise variance. The outage probability is:

$$
P_{\text{out}} = \Pr \left( \text{SNR}_{\text{inst}} < \text{limiar} \right) = \Pr \left( \frac{|g|^2}{\operatorname{var}(\text{noise})} < \text{limiar} \right)
$$

Assuming |g|^2 = 1, the SNR simplifies to:

$$
\text{SNR} = \frac{1}{\operatorname{var}(\text{noise})}
$$

Thus, the outage condition becomes:

$$
P_{\text{out}} = \Pr \left( 1 < \text{limiar} \cdot \operatorname{var}(\text{noise}) \right) = \Pr \left( 1 < \frac{\text{limiar}}{\text{SNR}} \right)
$$

For instantaneous probability:

$$
P_{\text{out,inst}} = \max(|g|^2) < \frac{\text{limiar}}{\text{SNR}}
$$

Finally, the overall outage probability is:

$$
P_{\text{out}} = \mathbb{E}[P_{\text{out,inst}}]
$$

This generalizes dataset analysis, making Pout depend only on the threshold, allowing variation of SNR while maintaining a simplified channel model.