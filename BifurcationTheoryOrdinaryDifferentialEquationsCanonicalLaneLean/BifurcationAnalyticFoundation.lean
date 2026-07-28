import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationODEFoundations

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationAnalyticFoundation where
  parameterPackage : PrimitiveParameterSpace
  phasePackage : PrimitivePhaseSpace
  vectorFieldPackage : PrimitiveVectorField parameterPackage phasePackage
  equilibriumPackage : PrimitiveEquilibrium parameterPackage phasePackage vectorFieldPackage
  jacobianPackage : PrimitiveJacobian parameterPackage phasePackage vectorFieldPackage equilibriumPackage
  evidenceEigenvalueCrossing : jacobianPackage.eigenvalueCrossingCondition
  evidenceTransversality : jacobianPackage.transversalityCondition

def BifurcationFoundationClosed (A : BifurcationAnalyticFoundation) : Prop :=
  A.evidenceEigenvalueCrossing ∧ A.evidenceTransversality

theorem foundation_closed_from_evidence (A : BifurcationAnalyticFoundation) :
  BifurcationFoundationClosed A := by
  exact And.intro A.evidenceEigenvalueCrossing A.evidenceTransversality

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse