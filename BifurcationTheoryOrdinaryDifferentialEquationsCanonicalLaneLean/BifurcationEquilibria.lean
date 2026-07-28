import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure ParameterizedSystem where
  stateSpace : Type u
  parameterSpace : Type v
  vectorField : stateSpace → parameterSpace → stateSpace

structure EquilibriumPoint (P : ParameterizedSystem) where
  state : P.stateSpace
  parameter : P.parameterSpace
  equilibriumCondition : P.vectorField state parameter = state

structure EigenvalueCondition (E : EquilibriumPoint P) where
  jacobian : Type w
  eigenvalues : List ℝ
  noEigenvaluesOnImaginaryAxis : Prop

structure SpectralStabilityPackage (E : EquilibriumPoint P) where
  eigenvalueCondition : EigenvalueCondition E
  hyperbolic : Prop
  sink : Prop
  source : Prop
  saddle : Prop

structure BifurcationAdmittedObject where
  system : ParameterizedSystem
  equilibrium : EquilibriumPoint system
  stability : SpectralStabilityPackage equilibrium
  conclusion : Prop

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse