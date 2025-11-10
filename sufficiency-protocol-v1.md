
---

# **The Sufficiency Protocol**  
### *Merging Georgescu-Roegen’s Bioeconomics with Nakamoto’s Scarcity*  
**Version 1.0 — November 2025**  
*Authors: [Pascal Ranaora] — Open Source under CC-BY-SA 4.0*  

---

## Abstract  
The **Degrowth movement** and **Bitcoin** appear irreconcilable: one demands the end of exponential growth, the other is powered by it.  
This whitepaper resolves the paradox by demonstrating that **Bitcoin’s terminal supply curve** (21 million) is the **first engineered monetary expression** of **Nicholas Georgescu-Roegen’s Fourth Law of Thermodynamics**—the irreversible entropic degradation of low-entropy resources.  

We introduce **The Sufficiency Protocol**, a framework where:  
- **Monetary issuance degrows to zero** (Nakamoto)  
- **Energy is used only where it would otherwise dissipate** (Georgescu-Roegen)  
- **Local sufficiency units** are backed by **hard-capped digital scarcity**  

The result: **a planetary monetary layer that respects thermodynamic limits**.

---

## 1. The Thermodynamic Contradiction of Fiat  

Georgescu-Roegen (1971):  
> *"The economy is an entropy-increasing process… every time we produce a car, we irrevocably degrade low-entropy matter-energy into high-entropy waste."*  

**Fiat money** violates this:  
- **Central banks** create **unbounded claims** on finite resources.  
- **Inflation** is **institutionalized entropy denial**—pretending low-entropy stocks are infinite.  

**Result**: Malinvestment in **high-entropy throughput** (suburban sprawl, fast fashion, planned obsolescence).  

---

## 2. Bitcoin as the Fourth Law in Code  

**Nakamoto’s Scarcity Schedule** (2008):  
```python
def block_reward(height):
    return 50 * 10**8 >> (height // 210000)  # Halves every 210k blocks
```
→ **Terminal supply**: 20,999,999.9769 BTC (~2140)  

This is **not growth**. It is **controlled depletion** of a **digital low-entropy stock** (unmined BTC).  

| Georgescu-Roegen | Bitcoin |
|------------------|--------|
| **Low-entropy fund** | 21 M BTC (finite stock) |
| **Entropic degradation** | Proof-of-Work (irreversible energy → security) |
| **Fourth Law** | **No recycling of spent energy** → no double-spend |

**Key insight**: Bitcoin **does not pretend** to recycle entropy. It **honestly expends** it to secure a **permanent, unforgeable ledger**.

---

## 3. The Sufficiency Protocol: Design Principles  

### Principle 1: **Monetary Degrowth by Design**  
- **Issuance curve** → zero.  
- After 2140: **No new BTC** → **no new energy demand from minting**.  
- **Security sustained** via **transaction fees** (voluntary, market-driven).  

### Principle 2: **Mine Only Dissipative Energy**  
Deploy miners **only where energy would be lost**:  
- Flare gas (methane → BTC + CO₂e reduction)
- Landfills (methane → BTC + CO₂e reduction)
- Curtailed renewables (wind/solar spill)  
- Hydro spillways
- Nuclear surplus or excess energy

**Thermodynamic rule**:  
> *“Use energy that would increase entropy anyway.”*  

### Principle 3: **Sufficiency-Backed Local Currencies**  
**EcoSats** (see [spec](https://github.com/pascalranaora/sufficiency-protocol/blob/main/EcoSats-Spec-v1.md)):  
```text
1 ES = 1 satoshi ⊻ 1 sufficiency unit (kWh excess, hour care, kg compost)
```
- **XOR redemption**: prevents double-spending.  
- **Demurrage**: –2 %/month on large balances → discourages hoarding.  

---

## 4. Mathematical Fusion: Entropy-Bounded Money  

Let:  
- $$\( E_t \)$$ = available low-entropy stock at time $$\( t \)$$  
- $$\( M_t \)$$ = money supply at time $$\( t \)$$  
- $$\( \Delta S \)$$ = entropy increase per economic process  

**Fiat**: $$\( M_t = M_0 e^{rt} \)$$ → **unbounded claims** on $$\( E_t \)$$  
**Bitcoin**: $$\( M_t = \sum_{h=0}^{n} 50 \cdot 10^8 \cdot \frac{1}{2^{\lfloor h/210000 \rfloor}} \)$$ → **bounded**  

**Sufficiency Protocol**:  
$$\[ M_t^{\text{local}} = \min(M_t^{\text{BTC cap}}, k \cdot L_t) \]$$  
where $$\( L_t \)$$ = local low-entropy services (hours, kWh, kg compost)  

→ **Money supply cannot exceed local thermodynamic capacity**. See all formulas : [sufficiency-protocol/formulas](https://github.com/pascalranaora/sufficiency-protocol/blob/main/formulas.md)

---

## 5. Implementation Roadmap  

| Phase | Goal | Tools |
|------|------|-------|
| **2026** | 3 pilot EcoSats villages | RaspiBolt, Minibits, Hyperledger |
| **2028** | Global **Sufficiency Unit Registry** (SUR) | IPFS + DLC oracles |
| **2035** | **Bitcoin as UNESCO Digital Commons** | UN submission |
| **2140** | **Monetary issuance = 0** | Protocol complete |

---

## 6. Objections & Rebuttals  

| Objection | Rebuttal |
|---------|----------|
| **"Mining wastes energy"** | Only if energy had **alternative use**. We mine **dissipative flows**. |
| **"Volatility encourages speculation"** | **Demurrage + HODL locks** → anti-speculative. |
| **"Centralization of hashpower"** | **Stratum v2 + Ocean Pool** → solo mining revival. |

---

## 7. Conclusion: The End of Monetary Infinity  

Georgescu-Roegen warned:  
> *"The most important lesson of thermodynamics is that **there is no such thing as a perpetual motion machine**."*  

Bitcoin is **not** a perpetual motion machine.  
It is a **one-time entropy pump**—converting dissipative energy into **permanent, unforgeable scarcity**.  

**The Sufficiency Protocol** completes the circuit:  
- **Global layer**: Bitcoin (hard cap, entropy-honest)  
- **Local layer**: EcoSats (sufficiency-backed, demurrage-driven)  

Together, they form **the first monetary system compatible with a finite planet**.

---

## Appendices  

### A. Source Code (Pseudocode)  
```python
# EcoSats Mint (Taproot + Chaumian e-cash)
def issue_ecosat(recipient_pubkey, sufficiency_proof):
    if verify_oracle(sufficiency_proof) and vault_balance >= 1:
        mint_ecash_token(1_sat, sufficiency_proof)
        burn_opreturn(proof_hash)
        return token
```

### B. References  
- Georgescu-Roegen, N. (1971). *The Entropy Law and the Economic Process*.  
- Nakamoto, S. (2008). *Bitcoin: A Peer-to-Peer Electronic Cash System*.  
- EcoSats Spec v1.0 (2025).  

---

## License  
**CC-BY-SA 4.0**  
Attribute to: *The Sufficiency Protocol Collective*  
Fork, remix, deploy.

---

*The revolution will be capped at 21 million.*
