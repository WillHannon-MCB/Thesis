# Chapter 0: Introduction

Viruses evolve rapidly, accumulating mutations that escape immunity, improve transmission, and facilitate adaptation to new pathogenic niches. This rapid evolution makes it difficult to develop successful vaccines and therapies. However, by understanding viral evolution, we can anticipate potential changes and develop more effective strategies for prevention and treatment.

High-throughput technologies like deep sequencing and deep mutational scanning are instrumental in this effort, providing detailed insights into the viral genome and proteome. Deep sequencing allows us to identify genetic variations within virus populations, while deep mutational scanning links these variations to their functional consequences. Together, these tools can offer a comprehensive picture of how viruses adapt and resist therapeutic interventions.

The power of deep sequencing lies in its ability to identify variant alleles and quantify their abundance even if they constitute a small fraction of the virus population. By enabling us to map the distribution of genetic variants over time and space, deep sequencing can reveal the intricate details of viral evolution, even at the scale of individual infections. This fine-grained approach has enabled us to understand the implications of viral diversity for immune evasion, drug resistance, and host adaptation.

Although deep sequencing allows us to observe the genetic variation in virus populations within and between hosts, these experiments are often limited to naturally occurring mutations. With deep mutational scanning (DMS), we can extend deep sequencing to explore the functional impact of a massive number of viral mutations in parallel. This technique has made it possible to uncover the impact of amino acid variants on a diverse range of viral phenotypes.

In my graduate work, I built upon these two techniques by developing and employing computational tools to contribute novel insights into the mechanisms that drive virus evolution and adaptation. In this chapter of my dissertation, I’ll provide an overview of what we’ve learned from these techniques, I’ll explain how my work fits into the broader field, and finally, I’ll give a brief overview of the chapters to follow.

## High-throughput experiments in viral evolution

High-throughput experiments provide a systematic view of viral evolution that was previously unachievable. In parallel, advancements in computational biology have allowed us to make sense of the vast datasets produced by these experiments. Together, the synergy between experiment and computation has led to significant breakthroughs in understanding the evolutionary pressures that shape viral fitness. In my dissertation, I will focus on two high-throughput techniques; deep sequencing and deep mutational scanning. In the following sections, I will describe each of these techniques in detail alongside the contributions that they've made to our understanding of viruses. I will also highlight the challenges that complicate their analysis and interpretation.

### Deep sequencing: studying viral evolution at multiple scales

The development of genomic sequencing is tightly linked with the study of viruses. In fact, the very first genome ever sequenced was that of a virus, the bacteriophage ΦX174. Over four decades later, access to affordable deep sequencing has revolutionized our approach to studying viral evolution by allowing us to investigate genomic variants with unprecedented resolution. This resolution is particularly important for studying RNA viruses, which, due to their high mutation rates, exist within a host as an ensemble of diverse but related viral particles.

This diversity is an import feature of viral infections that couldn't be adequately explored with previous sequencing methods. For example, methods like Sanger sequencing only capture a consensus sequence that doesn't necessarily reflect the underlying population of viral variants. Although coupling Sanger sequencing with the isolation of individual viral clones can provide a more detailed picture of a viral population, this approach is cumbersome and still only provides limited resolution. In contrast, deep sequencing can accurately identify viral variants that make up even a miniscule fraction of a sample, opening up the door to study the dynamics of viral populations at the scale of individual infections.

The research presented in the upcoming chapters primarily focuses on the within-host dynamics of Measles and SARS-CoV-2. Both are RNA viruses that typically cause acute respiratory illness. To keep the scope of this section as relevant as possible, I'll focus on the within-host evolution of these and related acute RNA viruses.

#### Exploring viral dynamics within individual hosts

During a viral infection, error-prone replication leads to an accumulation of genetic diversity in a host. These diverse but related genetic variants are commonly referred to as 'viral quasispecies'. Selection can act on this entire population of viruses.

Studies of acute viral infections of SARS-CoV-2 and Influenza have revealed populations that are often limited to a single genomic variant that dominates the population. As a result, it's rare to observe selection in an acute infection. One possible reason for this is that the peak of viral infection doesn't overlap the peak of the host's adaptive immune response.

In contrast, chronic infections present a rich opportunity for a virus to diversify and adapt within a host. In fact, evolution within chronic infections has been fairly predictive of evolution in the global population. Some even speculate that chronic infections have led to the major antigenic drift observed in viruses like SARS-CoV-2.

There are some limitations to these studies. For example, sequencing errors are common. In addition to this, the template diversity of samples can significantly impact how accurately sequencing results reflect the population. Finally, the virus exists in the host in a complex spatial structure. Most studies of viral diversity within-hosts don't take this into account.

These types of studies become even more informative when there's spatial or temporal information.

#### Uncovering the role of transmission on global viral evolution

RNA viruses like SARS-CoV-2 and Influenza rapidly evolve by fixing mutations that allow them to evade population-level immune pressure. At some point, these adaptive mutations originated as *de novo* mutations within individual infections as the result of error-prone replication. Therefore, the viral diversity that arises within infected hosts provides the substrate for population-level evolution.

Transmission links the evolutionary dynamics within a host to evolution at the population level. Upon transmission to a new host, the genetic diversity generated within a host is subject to a bottleneck. Specifically, I will refer to the *transmission bottleneck* as the effective size of the virus population from a donor host that establishes a new infection in a recipient host. This bottleneck’s size profoundly impacts selection efficiency and the rate of adaptation between scales. If the bottleneck is wide, the genetic diversity that arose in the donor host will be preserved in the recipient, maintaining the selective pressures that acted on that population. However, if the bottleneck is narrow, the effective population size between hosts is small, and genetic drift will dominate as the primary evolutionary force.

Deep sequencing has made it possible to quantitatively measure the size of the transmission bottleneck. It's possible to sequencing a donor host and recipient host and compare the viral population. Using this information, there are several methods for calculating the transmission bottleneck. Typically, these methods treat transmission as a binomial sampling process. By comparing the population between donor and host,...

However, there are significant limitations to these methods. For instance, recurrent sequencing error can lead to significant overestimation of the bottleneck size. Although heuristic thresholds can ameliorate these problems, overly stringent filter can lead to underestimation of the true bottleneck size. Furthermore, in acute infections, there is often limited detectable genetic diversity. This significantly reduces the power to calculate the bottleneck size.

Although better experimental approaches can help accurately calculate the true bottleneck size, the dynamics of viral variation can still provide clear indications about the relative size of the transmission bottleneck. For instance, in a study of...

Despite the progress in calculating transmission bottlenecks, there are still some significant gaps in our knowledge. For example, most studies of the transmission bottleneck of viruses are in household or hospital settings. These types of transmission scenarios have the advantage of straightforward contact tracing. However, they're aren't necessarily reflective of the transmission events that drive global spread of viruses like SARS-CoV-2.

### Deep mutational scanning: systematically profiling the impact of viral mutations

#### Overcoming hurdles to decipher mutational data

## Layout of Dissertation
