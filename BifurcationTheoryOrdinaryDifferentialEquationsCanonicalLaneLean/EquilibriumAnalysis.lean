import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure EquilibriumPackage where
  system : Type u
  parameterSpace : Type v
  equilibria : parameterSpace → Set (system)
  linearization : Type w
  stabilityCriterion : Prop
  bifurcationPoint : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  equilibriaDefined : ∀ p, E.equilibria p ≠ ∅
  stabilityCriterionClosed : E.stabilityCriterion
  bifurcationPointClosed : E.bifurcationPoint

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  (∀ p, E.equilibria p ≠ ∅) ∧ E.stabilityCriterion ∧ E.bifurcationPoint

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage) (ev : EquilibriumEvidence E) :
    EquilibriumClosed E := by
  exact And.intro ev.equilibriaDefined (And.intro ev.stabilityCriterionClosed ev.bifurcationPointClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse