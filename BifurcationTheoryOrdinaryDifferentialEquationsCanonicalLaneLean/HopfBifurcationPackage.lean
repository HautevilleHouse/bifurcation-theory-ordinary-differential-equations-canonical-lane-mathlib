import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationAdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure HopfBifurcationPackage (A : AdmissibleClass) where
  eigenvalueCrossingCondition : Prop
  nonresonanceCondition : Prop
  periodicOrbitEmergence : Prop
  stabilityOfLimitCycle : Prop

structure HopfBifurcationEvidence {A : AdmissibleClass} (H : HopfBifurcationPackage A) where
  eigenvalueCrossingConditionClosed : H.eigenvalueCrossingCondition
  nonresonanceConditionClosed : H.nonresonanceCondition
  periodicOrbitEmergenceClosed : H.periodicOrbitEmergence
  stabilityOfLimitCycleClosed : H.stabilityOfLimitCycle

def HopfBifurcationClosed {A : AdmissibleClass} (H : HopfBifurcationPackage A) : Prop :=
  H.eigenvalueCrossingCondition ∧ H.nonresonanceCondition ∧
  H.periodicOrbitEmergence ∧ H.stabilityOfLimitCycle

theorem hopf_bifurcation_closed_from_evidence {A : AdmissibleClass}
    (H : HopfBifurcationPackage A) (E : HopfBifurcationEvidence H) : HopfBifurcationClosed H := by
  exact And.intro E.eigenvalueCrossingConditionClosed
    (And.intro E.nonresonanceConditionClosed
      (And.intro E.periodicOrbitEmergenceClosed E.stabilityOfLimitCycleClosed))

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
