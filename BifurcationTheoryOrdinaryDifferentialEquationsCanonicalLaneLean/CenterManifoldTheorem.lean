import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage {P : BifurcationAdmittedObject} where
  centerManifoldExists : Prop
  reductionValid : Prop
  stabilityPreserved : Prop

structure CenterManifoldEvidence {P : BifurcationAdmittedObject}
    (C : CenterManifoldPackage) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionValidClosed : C.reductionValid
  stabilityPreservedClosed : C.stabilityPreserved

def CenterManifoldClosed {P : BifurcationAdmittedObject}
    (C : CenterManifoldPackage) : Prop :=
  C.centerManifoldExists ∧ C.reductionValid ∧ C.stabilityPreserved

theorem center_manifold_closed_from_evidence
    {P : BifurcationAdmittedObject} (C : CenterManifoldPackage)
    (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.centerManifoldExistsClosed
    (And.intro E.reductionValidClosed E.stabilityPreservedClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse