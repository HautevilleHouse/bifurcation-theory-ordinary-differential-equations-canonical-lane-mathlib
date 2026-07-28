import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "bifurcation-theory-ordinary-differential-equations-canonical-lane"

def sourceDescription : String :=
  "Bifurcation Theory Ordinary Differential Equations canonical theorem closure"

def sourceTheoremBoundary : Prop :=
  True

def baselineCertificateLane : String :=
  "manifold_constrained"

def classicalSourceBoundaryCarried (formalizationCertificate : { theoremBoundaryOpen : Bool, sourceConjectureClosureClaimed : Bool }) : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧ formalizationCertificate.sourceConjectureClosureClaimed = false

def manifoldConstrainedTheoremClosed (baselineCertificateAllPass : Bool) (outsideConstantDependencyCount : Nat) : Prop :=
  baselineCertificateLane = "manifold_constrained" ∧ baselineCertificateAllPass = true ∧ outsideConstantDependencyCount = 0

end BifurcationTheoryOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
