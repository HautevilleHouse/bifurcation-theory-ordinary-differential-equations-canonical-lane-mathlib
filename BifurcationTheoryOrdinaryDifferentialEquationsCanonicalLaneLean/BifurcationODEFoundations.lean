import BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean.PrimitiveBifurcationODEs

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure ODEVectorFieldPackage (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace) where
  family : PrimitiveVectorField P X
  smoothness : Prop
  lipschitzInState : Prop

structure ODEVectorFieldEvidence (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (F : ODEVectorFieldPackage P X) where
  smoothnessClosed : F.smoothness
  lipschitzInStateClosed : F.lipschitzInState

def ODEVectorFieldClosed (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (F : ODEVectorFieldPackage P X) : Prop :=
  F.smoothness ∧ F.lipschitzInState

theorem ode_vector_field_closed_from_evidence (P : PrimitiveParameterSpace) (X : PrimitivePhaseSpace)
  (F : ODEVectorFieldPackage P X) (E : ODEVectorFieldEvidence P X F) : ODEVectorFieldClosed P X F := by
  exact And.intro E.smoothnessClosed E.lipschitzInStateClosed

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse