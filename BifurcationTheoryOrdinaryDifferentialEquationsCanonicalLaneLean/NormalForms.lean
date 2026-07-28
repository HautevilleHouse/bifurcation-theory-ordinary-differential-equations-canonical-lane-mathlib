import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.CenterManifoldTheorem

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormsPackage {P : BifurcationAdmittedObject}
    (C : CenterManifoldPackage) where
  resonantTermsComputed : Prop
  normalFormPolynomial : Prop
  unfoldingTerms : Prop

structure NormalFormsEvidence {P : BifurcationAdmittedObject}
    {C : CenterManifoldPackage} (N : NormalFormsPackage C) where
  resonantTermsComputedClosed : N.resonantTermsComputed
  normalFormPolynomialClosed : N.normalFormPolynomial
  unfoldingTermsClosed : N.unfoldingTerms

def NormalFormsClosed {P : BifurcationAdmittedObject}
    {C : CenterManifoldPackage} (N : NormalFormsPackage C) : Prop :=
  N.resonantTermsComputed ∧ N.normalFormPolynomial ∧ N.unfoldingTerms

theorem normal_forms_closed_from_evidence
    {P : BifurcationAdmittedObject} {C : CenterManifoldPackage}
    (N : NormalFormsPackage C) (E : NormalFormsEvidence N) :
    NormalFormsClosed N := by
  exact And.intro E.resonantTermsComputedClosed
    (And.intro E.normalFormPolynomialClosed E.unfoldingTermsClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse