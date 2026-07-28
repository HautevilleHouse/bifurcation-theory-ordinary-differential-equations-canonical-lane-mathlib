import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.EquilibriumAnalysis

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationPhenomenaPackage (E : EquilibriumPackage) where
  hopfBifurcation : Prop
  saddleNodeBifurcation : Prop
  pitchforkBifurcation : Prop
  transcriticalBifurcation : Prop
  eigenvalueCondition : Prop

structure BifurcationPhenomenaEvidence {E : EquilibriumPackage} (B : BifurcationPhenomenaPackage E) where
  hopfClosed : B.hopfBifurcation
  saddleNodeClosed : B.saddleNodeBifurcation
  pitchforkClosed : B.pitchforkBifurcation
  transcriticalClosed : B.transcriticalBifurcation
  eigenvalueConditionClosed : B.eigenvalueCondition

def BifurcationPhenomenaClosed {E : EquilibriumPackage} (B : BifurcationPhenomenaPackage E) : Prop :=
  B.hopfBifurcation ∧ B.saddleNodeBifurcation ∧ B.pitchforkBifurcation ∧ B.transcriticalBifurcation ∧ B.eigenvalueCondition

theorem bifurcation_phenomena_closed_from_evidence {E : EquilibriumPackage} (B : BifurcationPhenomenaPackage E) (ev : BifurcationPhenomenaEvidence B) :
    BifurcationPhenomenaClosed B := by
  exact And.intro ev.hopfClosed (And.intro ev.saddleNodeClosed (And.intro ev.pitchforkClosed (And.intro ev.transcriticalClosed ev.eigenvalueConditionClosed)))

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse