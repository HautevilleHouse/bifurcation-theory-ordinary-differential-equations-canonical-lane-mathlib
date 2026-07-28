import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure PrimitiveParameterSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop

default decorator structure

structure PrimitivePhaseSpace where
  carrier : Type v
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure PrimitiveVectorField (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace) where
  mapping : P.carrier → X.carrier → X.carrier
  smoothInParameterAndState : Prop

structure PrimitiveEquilibrium (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (V : PrimitiveVectorField P X) where
  point : P.carrier → X.carrier
  equilibriumCondition : ∀ (p : P.carrier), V.mapping p (point p) = point p

structure PrimitiveJacobian (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (V : PrimitiveVectorField P X) (E : PrimitiveEquilibrium P X V) where
  derivativeAtEquilibrium : P.carrier → (X.carrier →L[ℝ] X.carrier)
  eigenvalues : P.carrier → List ℂ
  eigenvalueCrossingCondition : Prop
  transversalityCondition : Prop

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse