/**
 */
package fr.inria.atlanmod.governance.strategy;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Phased Rule</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link fr.inria.atlanmod.governance.strategy.PhasedRule#getPhases <em>Phases</em>}</li>
 * </ul>
 * </p>
 *
 * @see fr.inria.atlanmod.governance.strategy.StrategyPackage#getPhasedRule()
 * @model
 * @generated
 */
public interface PhasedRule extends Rule {
	/**
	 * Returns the value of the '<em><b>Phases</b></em>' reference list.
	 * The list contents are of type {@link fr.inria.atlanmod.governance.strategy.Rule}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Phases</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Phases</em>' reference list.
	 * @see fr.inria.atlanmod.governance.strategy.StrategyPackage#getPhasedRule_Phases()
	 * @model
	 * @generated
	 */
	EList<Rule> getPhases();

} // PhasedRule
