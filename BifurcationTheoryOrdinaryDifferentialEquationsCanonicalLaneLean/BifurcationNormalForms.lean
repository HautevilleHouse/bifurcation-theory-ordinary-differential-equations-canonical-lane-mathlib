import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationAdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage (A : AdmissibleClass) where
  centerManifoldReduction : Prop
  normalFormCoordinateTransform : Prop
  truncatedNormalForm : Prop
  unfoldingParameters : Prop

structure NormalFormEvidence {A : AdmissibleClass} (N : NormalFormPackage A) where
  centerManifoldReductionClosed : N.centerManifoldReduction
  normalFormCoordinateTransformClosed : N.normalFormCoordinateTransform
  truncatedNormalFormClosed : N.truncatedNormalForm
  unfoldingParametersClosed : N.unfoldingParameters

def NormalFormClosed {A : AdmissibleClass} (N : NormalFormPackage A) : Prop :=
  N.centerManifoldReduction ∧ N.normalFormCoordinateTransform ∧
  N.truncatedNormalForm ∧ N.unfoldingParameters

theorem normal_form_closed_from_evidence {A : AdmissibleClass}
    (N : NormalFormPackage A) (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.centerManifoldReductionClosed
    (And.intro E.normalFormCoordinateTransformClosed
      (And.intro E.truncatedNormalFormClosed E.unfoldingParametersClosed))

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
