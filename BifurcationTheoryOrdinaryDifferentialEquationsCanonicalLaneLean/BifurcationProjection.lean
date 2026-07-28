import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.PrimitiveBifurcationODEs

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationState (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (V : PrimitiveVectorField P X) (E : PrimitiveEquilibrium P X V) where
  parameter : P.carrier
  state : X.carrier
  isEquilibrium : state = E.point parameter

def bifurcationProjection (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (V : PrimitiveVectorField P X) (E : PrimitiveEquilibrium P X V) :
  BifurcationState P X V E → P.carrier := λ s => s.parameter

theorem bifurcation_projection_idempotent (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (V : PrimitiveVectorField P X) (E : PrimitiveEquilibrium P X V) (s : BifurcationState P X V E) :
  bifurcationProjection P X V E (s) = s.parameter := rfl

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse