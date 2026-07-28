import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage where
  systemDimension : ℕ
  centerManifoldExists : Prop
  reductionCoordinates : Prop
  reducedDynamics : Type u
  equivalenceWithOriginal : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionCoordinatesClosed : C.reductionCoordinates
  equivalenceWithOriginalClosed : C.equivalenceWithOriginal

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.centerManifoldExists ∧ C.reductionCoordinates ∧ C.equivalenceWithOriginal

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (ev : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro ev.centerManifoldExistsClosed (And.intro ev.reductionCoordinatesClosed ev.equivalenceWithOriginalClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse