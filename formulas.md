# **Bitcoin Degrowth Manifesto — All Formulas**  
**“Money Supply ≤ Local Thermodynamic Capacity”**  
*Finite Money for a Finite Planet*  

---

## Core Principle  
> **Money supply cannot exceed local thermodynamic capacity.**  
> → $$\( M_t^{\text{local}} \leq k \cdot L_t \)$$  
> where $$\( L_t \)$$ = **low-entropy services** (energy, labor, materials) available locally.

---

## 1. **Fiat vs. Bitcoin vs. Degrowth Money**

| System | Money Supply Formula | Entropy Denial? |
|-------|-----------------------|-----------------|
| **Fiat** | $$\( M_t = M_0 e^{rt} \)$$ | Yes — unbounded |
| **Bitcoin** | $$\( M_t = \sum_{h=0}^{n} 50 \cdot 10^8 \cdot \frac{1}{2^{\lfloor h/210000 \rfloor}} \$$) | No — capped |
| **EcoSats (Degrowth)** | $$\( M_t^{\text{local}} = \min(M_t^{\text{BTC cap}}, k \cdot L_t) \$$) | **No — thermodynamically bounded** |

---

## 2. **Thermodynamic Capacity $$\( L_t \)$$**  
**Local low-entropy stock** (Georgescu-Roegen)

$$\[
L_t = E_t + H_t + C_t
\]$$

| Term | Meaning | Unit | Example |
|------|-------|------|--------|
| $$\( E_t \)$$ | Excess renewable energy | kWh | 500 kWh solar spill |
| $$\( H_t \)$$ | Human care/repair hours | hours | 200 hours bike fixes |
| $$\( C_t \)$$ | Regenerative compost/food | kg | 300 kg tomatoes |

$$\[
L_t = \alpha E_t + \beta H_t + \gamma C_t
\]$$

> **Default weights**: $$\( \alpha = \beta = \gamma = 1 \)$$ (1 kWh = 1 hour = 1 kg)

---

## 3. **EcoSats Supply Rule**

$$\[
M_t^{\text{EcoSats}} = \min\left( \text{BTC vault}, \sum \text{verified } L_t \right)
\]$$

- **BTC vault** = hard cap from Bitcoin (e.g., 1,000,000 sats)  
- **Verified $$\( L_t \)** = oracle-signed sufficiency units$$  

$$\[
\text{1 ES} = 1 \text{ sat} \oplus 1 \text{ unit of } L_t
\]$$

> **XOR redemption**: You get **either** 1 sat **or** 1 unit — **never both**.

---

## 4. **Issuance Curve (Degrowth by Design)**

$$\[
\text{ES issued per month} = \min\left( \Delta L_t, \; 0.1 \cdot M_{t-1} \right)
\]$$

- **Max 10 % growth/month**  
- **Only if $$\( \Delta L_t > 0 \)$$** (new sufficiency added)

$$\[
\Delta L_t = L_t - L_{t-1}
\]$$

---

## 5. **Demurrage (Anti-Hoarding)**

$$\[
B_{t+1} = 
\begin{cases} 
B_t \cdot (1 - d) & \text{if } B_t > B_{\text{min}} \\
B_t & \text{otherwise}
\end{cases}
\]$$

- $$\( d = 0.02 \)$$ (2 % per month)  
- $$\( B_{\text{min}} = 1,000 \)$$ ES  

**Burned ES** → sent to `OP_RETURN` → **thermodynamic sink**

---

## 6. **HODL Lock (Anti-Speculation)**

$$\[
\text{If } B_t > 5,000 \text{ ES} \quad \Rightarrow \quad \text{lock for } 365 \text{ days}
\]$$

---

## 7. **Exit Rule (Global Bridge)**

$$\[
\text{Max BTC exit per month} = 0.1 \cdot \text{BTC vault}
\]$$

$$\[
\text{ES burned on exit} = \text{sats withdrawn}
\]$$

---

## 8. **Proof of Thermodynamic Backing**

$$\[
\text{Reserve Ratio} = \frac{\text{BTC in vault} + \text{verified } L_t}{\text{ES issued}} \geq 1
\]$$

> Must be **published monthly** → `proof-of-reserves.md`

---

## 9. **Full System Equation**

$$\[
M_t^{\text{EcoSats}} = 
\min\left(
\underbrace{0.1 \cdot M_{t-1}}_{\text{10% growth cap}},
\underbrace{\text{BTC vault}}_{\text{global hard cap}},
\underbrace{\sum_{i} \text{verified } L_{t,i}}_{\text{local thermodynamic cap}}
\right)
\]$$

---

## 10. **One-Page Summary (Print This!)**


$$M_t &\leq k \cdot L_t$$
$$L_t &= E_t + H_t + C_t$$ 
$$1 \text{ ES} &= 1 \text{ sat} \oplus 1 \text{ unit } L_t$$
$$\Delta M_t &\leq 0.1 \cdot M_{t-1}$$
$$B_{t+1} &= B_t (1 - 0.02) \quad \text{if } B_t > 1000$$
\text{Exit} &\leq 0.1 \cdot \text{vault}
\end{align*}
```

> **Money grows only when the land does.**

---

## 11. **Manifesto Tagline**

> **“No more money than sunshine, sweat, and soil.”**

---

**All formulas are open-source.**  
Fork, verify, deploy.  
[github.com/sufficiency-protocol/formulas](https://github.com/sufficiency-protocol/formulas)
