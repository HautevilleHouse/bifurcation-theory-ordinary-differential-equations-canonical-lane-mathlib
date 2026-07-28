import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure SaddleNodeBifurcation (P : ParameterizedSystem) where
  equilibrium : EquilibriumPoint P
  zeroEigenvalue : Prop
  nondegeneracyCondition : Prop
  bifurcationParameter : P.parameterSpace

structure PitchforkBifurcation (P : ParameterizedSystem) where
  equilibrium : EquilibriumPoint P
  zeroEigenvalue : Prop
  symmetryCondition : Prop
  bifurcationParameter : P.parameterSpace

structure HopfBifurcation (P : ParameterizedSystem) where
  equilibrium : EquilibriumPoint P
  purelyImaginaryEigenvalues : Prop
  transversalityCondition : Prop
  bifurcationParameter : P.parameterSpace

structure BifurcationTypePackage (P : ParameterizedSystem) where
  saddleNode : Option (SaddleNodeBifurcation P)
  pitchfork : Option (PitchforkBifurcation P)
  hopf : Option (HopfBifurcation P)
  bifurcationDetected : Prop

structure BifurcationTypeEvidence (B : BifurcationTypePackage P) where
  saddleNodeClosed : B.saddleNode.isSome → (B.saddleNode.get).nondegeneracyCondition
  pitchforkClosed : B.pitchfork.isSome → (B.pitchfork.get).symmetryCondition
  hopfClosed : B.hopf.isSome → (B.hopf.get).transversalityCondition
  bifurcationDetectedClosed : B.bifurcationDetected

def BifurcationTypeClosed (B : BifurcationTypePackage P) : Prop :=
  B.bifurcationDetected

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse