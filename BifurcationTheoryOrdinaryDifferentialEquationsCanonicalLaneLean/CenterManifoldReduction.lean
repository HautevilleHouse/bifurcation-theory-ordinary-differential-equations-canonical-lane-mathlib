import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage (P : ParameterizedSystem) (E : EquilibriumPoint P) where
  centerEigenspace : Type u
  centerManifold : Type v
  reductionSatisfied : Prop
  stabilityPreserved : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage P E) where
  reductionSatisfiedClosed : C.reductionSatisfied
  stabilityPreservedClosed : C.stabilityPreserved

def CenterManifoldClosed (C : CenterManifoldPackage P E) : Prop :=
  C.reductionSatisfied ∧ C.stabilityPreserved

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage P E) (Ev : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro Ev.reductionSatisfiedClosed Ev.stabilityPreservedClosed

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse