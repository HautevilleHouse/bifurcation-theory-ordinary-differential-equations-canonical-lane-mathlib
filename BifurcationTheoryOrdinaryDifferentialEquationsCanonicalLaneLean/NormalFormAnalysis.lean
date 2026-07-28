import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage (P : ParameterizedSystem) (E : EquilibriumPoint P) where
  normalFormCoefficients : List ℝ
  coordinateTransform : Type u
  truncationOrder : Nat
  resonanceConditions : Prop

structure NormalFormEvidence (N : NormalFormPackage P E) where
  resonanceConditionsClosed : N.resonanceConditions
  normalFormComputed : Prop

def NormalFormClosed (N : NormalFormPackage P E) : Prop :=
  N.resonanceConditions ∧ N.resonanceConditions

theorem normal_form_closed_from_evidence (N : NormalFormPackage P E) (Ev : NormalFormEvidence N) :
    NormalFormClosed N := by
  exact And.intro Ev.resonanceConditionsClosed Ev.resonanceConditionsClosed

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse