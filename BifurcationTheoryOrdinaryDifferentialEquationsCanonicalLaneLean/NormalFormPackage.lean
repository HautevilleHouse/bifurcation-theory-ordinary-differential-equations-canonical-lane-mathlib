import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage where
  normalFormPolynomials : Type u
  coefficientsUnique : Prop
  coordinateTransformExists : Prop
  versalDeformation : Prop

structure NormalFormEvidence (N : NormalFormPackage) where
  coefficientsUniqueClosed : N.coefficientsUnique
  coordinateTransformExistsClosed : N.coordinateTransformExists
  versalDeformationClosed : N.versalDeformation

def NormalFormClosed (N : NormalFormPackage) : Prop :=
  N.coefficientsUnique ∧ N.coordinateTransformExists ∧ N.versalDeformation

theorem normal_form_closed_from_evidence (N : NormalFormPackage) (ev : NormalFormEvidence N) :
    NormalFormClosed N := by
  exact And.intro ev.coefficientsUniqueClosed (And.intro ev.coordinateTransformExistsClosed ev.versalDeformationClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse