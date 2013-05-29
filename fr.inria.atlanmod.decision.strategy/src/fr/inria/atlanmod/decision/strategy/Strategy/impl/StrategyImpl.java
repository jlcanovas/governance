/**
 */
package fr.inria.atlanmod.decision.strategy.Strategy.impl;

import fr.inria.atlanmod.decision.strategy.Strategy.CollaborationType;
import fr.inria.atlanmod.decision.strategy.Strategy.Deadline;
import fr.inria.atlanmod.decision.strategy.Strategy.Role;
import fr.inria.atlanmod.decision.strategy.Strategy.Strategy;
import fr.inria.atlanmod.decision.strategy.Strategy.StrategyPackage;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;

import org.eclipse.emf.ecore.util.EObjectResolvingEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Strategy</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.impl.StrategyImpl#getDeadline <em>Deadline</em>}</li>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.impl.StrategyImpl#getFilter <em>Filter</em>}</li>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.impl.StrategyImpl#getPeople <em>People</em>}</li>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.impl.StrategyImpl#getName <em>Name</em>}</li>
 *   <li>{@link fr.inria.atlanmod.decision.strategy.Strategy.impl.StrategyImpl#getAppliedTo <em>Applied To</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public abstract class StrategyImpl extends EObjectImpl implements Strategy {
	/**
	 * The cached value of the '{@link #getDeadline() <em>Deadline</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getDeadline()
	 * @generated
	 * @ordered
	 */
	protected Deadline deadline;

	/**
	 * The default value of the '{@link #getFilter() <em>Filter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getFilter()
	 * @generated
	 * @ordered
	 */
	protected static final String FILTER_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getFilter() <em>Filter</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getFilter()
	 * @generated
	 * @ordered
	 */
	protected String filter = FILTER_EDEFAULT;

	/**
	 * This is true if the Filter attribute has been set.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	protected boolean filterESet;

	/**
	 * The cached value of the '{@link #getPeople() <em>People</em>}' reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getPeople()
	 * @generated
	 * @ordered
	 */
	protected EList<Role> people;

	/**
	 * The default value of the '{@link #getName() <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getName()
	 * @generated
	 * @ordered
	 */
	protected static final String NAME_EDEFAULT = null;

	/**
	 * The cached value of the '{@link #getName() <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getName()
	 * @generated
	 * @ordered
	 */
	protected String name = NAME_EDEFAULT;

	/**
	 * The default value of the '{@link #getAppliedTo() <em>Applied To</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getAppliedTo()
	 * @generated
	 * @ordered
	 */
	protected static final CollaborationType APPLIED_TO_EDEFAULT = CollaborationType.TASK;

	/**
	 * The cached value of the '{@link #getAppliedTo() <em>Applied To</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getAppliedTo()
	 * @generated
	 * @ordered
	 */
	protected CollaborationType appliedTo = APPLIED_TO_EDEFAULT;

	/**
	 * This is true if the Applied To attribute has been set.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	protected boolean appliedToESet;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected StrategyImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return StrategyPackage.Literals.STRATEGY;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Deadline getDeadline() {
		if (deadline != null && deadline.eIsProxy()) {
			InternalEObject oldDeadline = (InternalEObject)deadline;
			deadline = (Deadline)eResolveProxy(oldDeadline);
			if (deadline != oldDeadline) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, StrategyPackage.STRATEGY__DEADLINE, oldDeadline, deadline));
			}
		}
		return deadline;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Deadline basicGetDeadline() {
		return deadline;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setDeadline(Deadline newDeadline) {
		Deadline oldDeadline = deadline;
		deadline = newDeadline;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, StrategyPackage.STRATEGY__DEADLINE, oldDeadline, deadline));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public String getFilter() {
		return filter;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setFilter(String newFilter) {
		String oldFilter = filter;
		filter = newFilter;
		boolean oldFilterESet = filterESet;
		filterESet = true;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, StrategyPackage.STRATEGY__FILTER, oldFilter, filter, !oldFilterESet));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void unsetFilter() {
		String oldFilter = filter;
		boolean oldFilterESet = filterESet;
		filter = FILTER_EDEFAULT;
		filterESet = false;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.UNSET, StrategyPackage.STRATEGY__FILTER, oldFilter, FILTER_EDEFAULT, oldFilterESet));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean isSetFilter() {
		return filterESet;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EList<Role> getPeople() {
		if (people == null) {
			people = new EObjectResolvingEList<Role>(Role.class, this, StrategyPackage.STRATEGY__PEOPLE);
		}
		return people;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public String getName() {
		return name;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setName(String newName) {
		String oldName = name;
		name = newName;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, StrategyPackage.STRATEGY__NAME, oldName, name));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public CollaborationType getAppliedTo() {
		return appliedTo;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setAppliedTo(CollaborationType newAppliedTo) {
		CollaborationType oldAppliedTo = appliedTo;
		appliedTo = newAppliedTo == null ? APPLIED_TO_EDEFAULT : newAppliedTo;
		boolean oldAppliedToESet = appliedToESet;
		appliedToESet = true;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, StrategyPackage.STRATEGY__APPLIED_TO, oldAppliedTo, appliedTo, !oldAppliedToESet));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void unsetAppliedTo() {
		CollaborationType oldAppliedTo = appliedTo;
		boolean oldAppliedToESet = appliedToESet;
		appliedTo = APPLIED_TO_EDEFAULT;
		appliedToESet = false;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.UNSET, StrategyPackage.STRATEGY__APPLIED_TO, oldAppliedTo, APPLIED_TO_EDEFAULT, oldAppliedToESet));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean isSetAppliedTo() {
		return appliedToESet;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case StrategyPackage.STRATEGY__DEADLINE:
				if (resolve) return getDeadline();
				return basicGetDeadline();
			case StrategyPackage.STRATEGY__FILTER:
				return getFilter();
			case StrategyPackage.STRATEGY__PEOPLE:
				return getPeople();
			case StrategyPackage.STRATEGY__NAME:
				return getName();
			case StrategyPackage.STRATEGY__APPLIED_TO:
				return getAppliedTo();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case StrategyPackage.STRATEGY__DEADLINE:
				setDeadline((Deadline)newValue);
				return;
			case StrategyPackage.STRATEGY__FILTER:
				setFilter((String)newValue);
				return;
			case StrategyPackage.STRATEGY__PEOPLE:
				getPeople().clear();
				getPeople().addAll((Collection<? extends Role>)newValue);
				return;
			case StrategyPackage.STRATEGY__NAME:
				setName((String)newValue);
				return;
			case StrategyPackage.STRATEGY__APPLIED_TO:
				setAppliedTo((CollaborationType)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case StrategyPackage.STRATEGY__DEADLINE:
				setDeadline((Deadline)null);
				return;
			case StrategyPackage.STRATEGY__FILTER:
				unsetFilter();
				return;
			case StrategyPackage.STRATEGY__PEOPLE:
				getPeople().clear();
				return;
			case StrategyPackage.STRATEGY__NAME:
				setName(NAME_EDEFAULT);
				return;
			case StrategyPackage.STRATEGY__APPLIED_TO:
				unsetAppliedTo();
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case StrategyPackage.STRATEGY__DEADLINE:
				return deadline != null;
			case StrategyPackage.STRATEGY__FILTER:
				return isSetFilter();
			case StrategyPackage.STRATEGY__PEOPLE:
				return people != null && !people.isEmpty();
			case StrategyPackage.STRATEGY__NAME:
				return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT.equals(name);
			case StrategyPackage.STRATEGY__APPLIED_TO:
				return isSetAppliedTo();
		}
		return super.eIsSet(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public String toString() {
		if (eIsProxy()) return super.toString();

		StringBuffer result = new StringBuffer(super.toString());
		result.append(" (filter: ");
		if (filterESet) result.append(filter); else result.append("<unset>");
		result.append(", name: ");
		result.append(name);
		result.append(", appliedTo: ");
		if (appliedToESet) result.append(appliedTo); else result.append("<unset>");
		result.append(')');
		return result.toString();
	}

} //StrategyImpl
