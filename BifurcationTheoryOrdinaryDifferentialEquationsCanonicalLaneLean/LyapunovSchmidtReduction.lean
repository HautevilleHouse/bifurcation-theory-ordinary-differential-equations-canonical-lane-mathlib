import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovSchmidtPackage {P : BifurcationAdmittedObject} where
  reductionEquation : Prop
  bifurcationEquation : Prop
  solutionBranches : Prop

structure LyapunovSchmidtEvidence {P : BifurcationAdmittedObject}
    (L : LyapunovSchmidtPackage) where
  reductionEquationClosed : L.reductionEquation
  bifurcationEquationClosed : L.bifurcationEquation
  solutionBranchesClosed : L.solutionBranches

def LyapunovSchmidtClosed {P : BifurcationAdmittedObject}
    (L : LyapunovSchmidtPackage) : Prop :=
  L.reductionEquation ∧ L.bifurcationEquation ∧ L.solutionBranches

theorem lyapunov_schmidt_closed_from_evidence
    {P : BifurcationAdmittedObject} (L : LyapunovSchmidtPackage)
    (E : LyapunovSchmidtEvidence L) : LyapunovSchmidtClosed L := by
  exact And.intro E.reductionEquationClosed
    (And.intro E.bifurcationEquationClosed E.solutionBranchesClosed)

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse