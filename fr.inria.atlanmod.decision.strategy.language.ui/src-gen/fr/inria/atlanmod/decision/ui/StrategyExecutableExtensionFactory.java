/*
 * generated by Xtext
 */
package fr.inria.atlanmod.decision.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import fr.inria.atlanmod.decision.ui.internal.StrategyActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class StrategyExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return StrategyActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return StrategyActivator.getInstance().getInjector(StrategyActivator.FR_INRIA_ATLANMOD_DECISION_STRATEGY);
	}
	
}