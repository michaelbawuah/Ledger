# Free Cornell compute access for a future confirmation

The [conditioned workspace attempt](../results/replications/runtime-20261030-01-review.md) failed its unchanged noise gate. A future attempt needs a newly declared host and protocol; the current runtime controller is restricted to its recorded hardware and must not be reused unchanged on a different host.

Cornell's [CAC Portal documentation](https://portal.cac.cornell.edu/techdocs/general/CACportal/) says anyone at Cornell or Weill Cornell Medicine who has **never had Red Cloud access** can request an exploratory project with **165 compute units**, 50 GB storage and one hour of consulting. Eligibility and approval have not been checked for this project.

To request this free allocation:

1. Open the [CAC Portal](https://portal.cac.cornell.edu/), choose **Login**, and select **Cornell University** through Globus. Use the existing Cornell NetID; complete any first-use contact information and required consent personally.
2. Under **Request or Join a CAC Project**, choose **Request an Exploratory CAC Project** and complete its form. The separate **Create a New CAC Project** route is for faculty/staff billing projects.
3. Once access is approved, inspect the allocation and available images before provisioning. The [compute documentation](https://portal.cac.cornell.edu/techdocs/redcloud/compute/) lists `c4.m32` with four physical CPU cores and 32 GB RAM, plus `ubuntu-24.04-LTS` with initial user `ubuntu`.

Cornell describes Red Cloud CPU cores and RAM as [dedicated rather than oversubscribed](https://www.cac.cornell.edu/services/GPUs.aspx). This is a stronger starting point for a quiet measurement than shared CI, not a guarantee of sub-2% variability or an exclusive physical server. Host identity, toolchain, affinity and a one-attempt protocol must be inspected and published before measuring. Preserve all earlier failures and test only the original fixed nominee if qualification passes.

No Cornell account, allocation, SSH access, security rule or instance has been created by this project. Do not put NetID passwords, private keys or API credentials in the repository. The fixed-nominee confirmation needs no new model calls.

After collecting results, use **Shelve Instance** and verify **Shelved Offloaded**. Cornell states that stopped, paused and suspended instances still consume compute allocation; only Shelved Offloaded releases compute resources. Storage remains allocated. See [instance states](https://portal.cac.cornell.edu/techdocs/redcloud/compute/#instance-states).
