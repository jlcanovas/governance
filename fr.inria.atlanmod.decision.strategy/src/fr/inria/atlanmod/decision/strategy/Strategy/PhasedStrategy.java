/**
 */
package fr.inria.atlanmod.decision.strategy.Strategy;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Phased Strategy</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.PhasedStrategy#getPhases <em>Phases</em>}</li>
 * </ul>
 * </p>
 *
 * @see fr.inria.atlanmod.decision.strategy.Strategy.StrategyPackage#getPhasedStrategy()
 * @model
 * @generated
 */
public interface PhasedStrategy extends Strategy {
	/**
	 * Returns the value of the '<em><b>Phases</b></em>' reference list.
	 * The list contents are of type {@link fr.inria.atlanmod.decision.strategy.Strategy.Strategy}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Phases</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Phases</em>' reference list.
	 * @see fr.inria.atlanmod.decision.strategy.Strategy.StrategyPackage#getPhasedStrategy_Phases()
	 * @model
	 * @generated
	 */
	EList<Strategy> getPhases();

} // PhasedStrategy
