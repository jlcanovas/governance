/*
* generated by Xtext
*/
grammar InternalStrategy;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package fr.inria.atlanmod.governance.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package fr.inria.atlanmod.governance.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import fr.inria.atlanmod.governance.services.StrategyGrammarAccess;

}

@parser::members {

 	private StrategyGrammarAccess grammarAccess;
 	
    public InternalStrategyParser(TokenStream input, StrategyGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Project";	
   	}
   	
   	@Override
   	protected StrategyGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleProject
entryRuleProject returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getProjectRule()); }
	 iv_ruleProject=ruleProject 
	 { $current=$iv_ruleProject.current; } 
	 EOF 
;

// Rule Project
ruleProject returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getProjectAccess().getProjectAction_0(),
            $current);
    }
)	otherlv_1='Project' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getProjectAccess().getProjectKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getProjectAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getProjectRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getProjectAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='Roles' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getProjectAccess().getRolesKeyword_4_0());
    }
	otherlv_5=':' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getProjectAccess().getColonKeyword_4_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getRolesRoleParserRuleCall_4_2_0()); 
	    }
		lv_roles_6_0=ruleRole		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"roles",
        		lv_roles_6_0, 
        		"Role");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_7=',' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getProjectAccess().getCommaKeyword_4_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getRolesRoleParserRuleCall_4_3_1_0()); 
	    }
		lv_roles_8_0=ruleRole		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"roles",
        		lv_roles_8_0, 
        		"Role");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?(	otherlv_9='Deadlines' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getProjectAccess().getDeadlinesKeyword_5_0());
    }
	otherlv_10=':' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getProjectAccess().getColonKeyword_5_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getDeadlinesDeadlineParserRuleCall_5_2_0()); 
	    }
		lv_deadlines_11_0=ruleDeadline		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"deadlines",
        		lv_deadlines_11_0, 
        		"Deadline");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_12=',' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getProjectAccess().getCommaKeyword_5_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getDeadlinesDeadlineParserRuleCall_5_3_1_0()); 
	    }
		lv_deadlines_13_0=ruleDeadline		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"deadlines",
        		lv_deadlines_13_0, 
        		"Deadline");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?(	otherlv_14='Strategies' 
    {
    	newLeafNode(otherlv_14, grammarAccess.getProjectAccess().getStrategiesKeyword_6_0());
    }
	otherlv_15=':' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getProjectAccess().getColonKeyword_6_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getStrategiesStrategyParserRuleCall_6_2_0()); 
	    }
		lv_strategies_16_0=ruleStrategy		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"strategies",
        		lv_strategies_16_0, 
        		"Strategy");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_17=',' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getProjectAccess().getCommaKeyword_6_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getProjectAccess().getStrategiesStrategyParserRuleCall_6_3_1_0()); 
	    }
		lv_strategies_18_0=ruleStrategy		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getProjectRule());
	        }
       		add(
       			$current, 
       			"strategies",
        		lv_strategies_18_0, 
        		"Strategy");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?	otherlv_19='}' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getProjectAccess().getRightCurlyBracketKeyword_7());
    }
)
;





// Entry rule entryRuleStrategy
entryRuleStrategy returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStrategyRule()); }
	 iv_ruleStrategy=ruleStrategy 
	 { $current=$iv_ruleStrategy.current; } 
	 EOF 
;

// Rule Strategy
ruleStrategy returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getStrategyAccess().getMajorityParserRuleCall_0()); 
    }
    this_Majority_0=ruleMajority
    { 
        $current = $this_Majority_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getStrategyAccess().getRatioMajorityParserRuleCall_1()); 
    }
    this_RatioMajority_1=ruleRatioMajority
    { 
        $current = $this_RatioMajority_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getStrategyAccess().getLeaderDrivenParserRuleCall_2()); 
    }
    this_LeaderDriven_2=ruleLeaderDriven
    { 
        $current = $this_LeaderDriven_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getStrategyAccess().getPhasedStrategyParserRuleCall_3()); 
    }
    this_PhasedStrategy_3=rulePhasedStrategy
    { 
        $current = $this_PhasedStrategy_3.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleRole
entryRuleRole returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRoleRule()); }
	 iv_ruleRole=ruleRole 
	 { $current=$iv_ruleRole.current; } 
	 EOF 
;

// Rule Role
ruleRole returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getRoleAccess().getNameIDTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRoleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)
;





// Entry rule entryRuleMajority
entryRuleMajority returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMajorityRule()); }
	 iv_ruleMajority=ruleMajority 
	 { $current=$iv_ruleMajority.current; } 
	 EOF 
;

// Rule Majority
ruleMajority returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getMajorityAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMajorityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getMajorityAccess().getColonKeyword_1());
    }
	otherlv_2='Majority' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getMajorityAccess().getMajorityKeyword_2());
    }
	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getMajorityAccess().getLeftCurlyBracketKeyword_3());
    }
	otherlv_4='applied to' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getMajorityAccess().getAppliedToKeyword_4());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMajorityAccess().getAppliedToCollaborationTypeEnumRuleCall_5_0()); 
	    }
		lv_appliedTo_5_0=ruleCollaborationType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMajorityRule());
	        }
       		set(
       			$current, 
       			"appliedTo",
        		lv_appliedTo_5_0, 
        		"CollaborationType");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_6='(' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getMajorityAccess().getLeftParenthesisKeyword_6_0());
    }

    { 
        newCompositeNode(grammarAccess.getMajorityAccess().getFilterParserRuleCall_6_1()); 
    }
ruleFilter
    { 
        afterParserOrEnumRuleCall();
    }
	otherlv_8=')' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getMajorityAccess().getRightParenthesisKeyword_6_2());
    }
)?	otherlv_9='when' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getMajorityAccess().getWhenKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMajorityAccess().getStageStageTypeEnumRuleCall_8_0()); 
	    }
		lv_stage_10_0=ruleStageType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMajorityRule());
	        }
       		set(
       			$current, 
       			"stage",
        		lv_stage_10_0, 
        		"StageType");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_11='people' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getMajorityAccess().getPeopleKeyword_9());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getMajorityRule());
	        }
        }
	otherlv_12=RULE_ID
	{
		newLeafNode(otherlv_12, grammarAccess.getMajorityAccess().getPeopleRoleCrossReference_10_0()); 
	}

)
)(	otherlv_13=',' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getMajorityAccess().getCommaKeyword_11_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getMajorityRule());
	        }
        }
	otherlv_14=RULE_ID
	{
		newLeafNode(otherlv_14, grammarAccess.getMajorityAccess().getPeopleRoleCrossReference_11_1_0()); 
	}

)
))*	otherlv_15='range' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getMajorityAccess().getRangeKeyword_12());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMajorityAccess().getRangeRangeTypeEnumRuleCall_13_0()); 
	    }
		lv_range_16_0=ruleRangeType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMajorityRule());
	        }
       		set(
       			$current, 
       			"range",
        		lv_range_16_0, 
        		"RangeType");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_17='minVotes' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getMajorityAccess().getMinVotesKeyword_14_0());
    }
(
(
		lv_minVotes_18_0=RULE_INT
		{
			newLeafNode(lv_minVotes_18_0, grammarAccess.getMajorityAccess().getMinVotesINTTerminalRuleCall_14_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMajorityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"minVotes",
        		lv_minVotes_18_0, 
        		"INT");
	    }

)
))?	otherlv_19='deadline' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getMajorityAccess().getDeadlineKeyword_15());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getMajorityRule());
	        }
        }
	otherlv_20=RULE_ID
	{
		newLeafNode(otherlv_20, grammarAccess.getMajorityAccess().getDeadlineDeadlineCrossReference_16_0()); 
	}

)
)	otherlv_21='}' 
    {
    	newLeafNode(otherlv_21, grammarAccess.getMajorityAccess().getRightCurlyBracketKeyword_17());
    }
)
;





// Entry rule entryRuleRatioMajority
entryRuleRatioMajority returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRatioMajorityRule()); }
	 iv_ruleRatioMajority=ruleRatioMajority 
	 { $current=$iv_ruleRatioMajority.current; } 
	 EOF 
;

// Rule RatioMajority
ruleRatioMajority returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getRatioMajorityAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getRatioMajorityAccess().getColonKeyword_1());
    }
	otherlv_2='Ratio' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getRatioMajorityAccess().getRatioKeyword_2());
    }
	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRatioMajorityAccess().getLeftCurlyBracketKeyword_3());
    }
	otherlv_4='applied to' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getRatioMajorityAccess().getAppliedToKeyword_4());
    }
(	otherlv_5='Task' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getRatioMajorityAccess().getTaskKeyword_5_0());
    }

    |	otherlv_6='Patch' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getRatioMajorityAccess().getPatchKeyword_5_1());
    }

    |	otherlv_7='Comment' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getRatioMajorityAccess().getCommentKeyword_5_2());
    }
)(	otherlv_8='(' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getRatioMajorityAccess().getLeftParenthesisKeyword_6_0());
    }

    { 
        newCompositeNode(grammarAccess.getRatioMajorityAccess().getFilterParserRuleCall_6_1()); 
    }
ruleFilter
    { 
        afterParserOrEnumRuleCall();
    }
	otherlv_10=')' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getRatioMajorityAccess().getRightParenthesisKeyword_6_2());
    }
)?	otherlv_11='when' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getRatioMajorityAccess().getWhenKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRatioMajorityAccess().getStageStageTypeEnumRuleCall_8_0()); 
	    }
		lv_stage_12_0=ruleStageType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatioMajorityRule());
	        }
       		set(
       			$current, 
       			"stage",
        		lv_stage_12_0, 
        		"StageType");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_13='people' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getRatioMajorityAccess().getPeopleKeyword_9());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
        }
	otherlv_14=RULE_ID
	{
		newLeafNode(otherlv_14, grammarAccess.getRatioMajorityAccess().getPeopleRoleCrossReference_10_0()); 
	}

)
)(	otherlv_15=',' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getRatioMajorityAccess().getCommaKeyword_11_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
        }
	otherlv_16=RULE_ID
	{
		newLeafNode(otherlv_16, grammarAccess.getRatioMajorityAccess().getPeopleRoleCrossReference_11_1_0()); 
	}

)
))*	otherlv_17='range' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getRatioMajorityAccess().getRangeKeyword_12());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRatioMajorityAccess().getRangeRangeTypeEnumRuleCall_13_0()); 
	    }
		lv_range_18_0=ruleRangeType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatioMajorityRule());
	        }
       		set(
       			$current, 
       			"range",
        		lv_range_18_0, 
        		"RangeType");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_19='minVotes' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getRatioMajorityAccess().getMinVotesKeyword_14_0());
    }
(
(
		lv_minVotes_20_0=RULE_INT
		{
			newLeafNode(lv_minVotes_20_0, grammarAccess.getRatioMajorityAccess().getMinVotesINTTerminalRuleCall_14_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"minVotes",
        		lv_minVotes_20_0, 
        		"INT");
	    }

)
))?	otherlv_21='ratio' 
    {
    	newLeafNode(otherlv_21, grammarAccess.getRatioMajorityAccess().getRatioKeyword_15());
    }
(
(
		lv_ratio_22_0=RULE_FLOAT
		{
			newLeafNode(lv_ratio_22_0, grammarAccess.getRatioMajorityAccess().getRatioFLOATTerminalRuleCall_16_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"ratio",
        		lv_ratio_22_0, 
        		"FLOAT");
	    }

)
)	otherlv_23='deadline' 
    {
    	newLeafNode(otherlv_23, grammarAccess.getRatioMajorityAccess().getDeadlineKeyword_17());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMajorityRule());
	        }
        }
	otherlv_24=RULE_ID
	{
		newLeafNode(otherlv_24, grammarAccess.getRatioMajorityAccess().getDeadlineDeadlineCrossReference_18_0()); 
	}

)
)	otherlv_25='}' 
    {
    	newLeafNode(otherlv_25, grammarAccess.getRatioMajorityAccess().getRightCurlyBracketKeyword_19());
    }
)
;





// Entry rule entryRuleLeaderDriven
entryRuleLeaderDriven returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getLeaderDrivenRule()); }
	 iv_ruleLeaderDriven=ruleLeaderDriven 
	 { $current=$iv_ruleLeaderDriven.current; } 
	 EOF 
;

// Rule LeaderDriven
ruleLeaderDriven returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getLeaderDrivenAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLeaderDrivenRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getLeaderDrivenAccess().getColonKeyword_1());
    }
	otherlv_2='LeaderDriven' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getLeaderDrivenAccess().getLeaderDrivenKeyword_2());
    }
	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getLeaderDrivenAccess().getLeftCurlyBracketKeyword_3());
    }
	otherlv_4='applied to' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getLeaderDrivenAccess().getAppliedToKeyword_4());
    }
(	otherlv_5='Task' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getLeaderDrivenAccess().getTaskKeyword_5_0());
    }

    |	otherlv_6='Patch' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getLeaderDrivenAccess().getPatchKeyword_5_1());
    }

    |	otherlv_7='Comment' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getLeaderDrivenAccess().getCommentKeyword_5_2());
    }
)(	otherlv_8='(' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getLeaderDrivenAccess().getLeftParenthesisKeyword_6_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLeaderDrivenAccess().getFilterFilterParserRuleCall_6_1_0()); 
	    }
		lv_filter_9_0=ruleFilter		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLeaderDrivenRule());
	        }
       		set(
       			$current, 
       			"filter",
        		lv_filter_9_0, 
        		"Filter");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_10=')' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getLeaderDrivenAccess().getRightParenthesisKeyword_6_2());
    }
)?	otherlv_11='when' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getLeaderDrivenAccess().getWhenKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLeaderDrivenAccess().getStageStageTypeEnumRuleCall_8_0()); 
	    }
		lv_stage_12_0=ruleStageType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLeaderDrivenRule());
	        }
       		set(
       			$current, 
       			"stage",
        		lv_stage_12_0, 
        		"StageType");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_13='default' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getLeaderDrivenAccess().getDefaultKeyword_9());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getLeaderDrivenRule());
	        }
        }
	otherlv_14=RULE_ID
	{
		newLeafNode(otherlv_14, grammarAccess.getLeaderDrivenAccess().getDefaultStrategyCrossReference_10_0()); 
	}

)
)	otherlv_15='deadline' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getLeaderDrivenAccess().getDeadlineKeyword_11());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getLeaderDrivenRule());
	        }
        }
	otherlv_16=RULE_ID
	{
		newLeafNode(otherlv_16, grammarAccess.getLeaderDrivenAccess().getDeadlineDeadlineCrossReference_12_0()); 
	}

)
)	otherlv_17='}' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getLeaderDrivenAccess().getRightCurlyBracketKeyword_13());
    }
)
;





// Entry rule entryRulePhasedStrategy
entryRulePhasedStrategy returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPhasedStrategyRule()); }
	 iv_rulePhasedStrategy=rulePhasedStrategy 
	 { $current=$iv_rulePhasedStrategy.current; } 
	 EOF 
;

// Rule PhasedStrategy
rulePhasedStrategy returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getPhasedStrategyAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPhasedStrategyRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getPhasedStrategyAccess().getColonKeyword_1());
    }
	otherlv_2='Ratio' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPhasedStrategyAccess().getRatioKeyword_2());
    }
	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPhasedStrategyAccess().getLeftCurlyBracketKeyword_3());
    }
	otherlv_4='phases' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPhasedStrategyAccess().getPhasesKeyword_4());
    }
	otherlv_5='{' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getPhasedStrategyAccess().getLeftCurlyBracketKeyword_5());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getPhasedStrategyRule());
	        }
        }
	otherlv_6=RULE_ID
	{
		newLeafNode(otherlv_6, grammarAccess.getPhasedStrategyAccess().getPhasesStrategyCrossReference_6_0()); 
	}

)
)*	otherlv_7='}' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getPhasedStrategyAccess().getRightCurlyBracketKeyword_7());
    }
	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getPhasedStrategyAccess().getRightCurlyBracketKeyword_8());
    }
)
;





// Entry rule entryRuleFilter
entryRuleFilter returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFilterRule()); } 
	 iv_ruleFilter=ruleFilter 
	 { $current=$iv_ruleFilter.current.getText(); }  
	 EOF 
;

// Rule Filter
ruleFilter returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getFilterAccess().getIDTerminalRuleCall_0_0()); 
    }
(
	kw='=' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFilterAccess().getEqualsSignKeyword_0_1_0()); 
    }

    |
	kw='!=' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFilterAccess().getExclamationMarkEqualsSignKeyword_0_1_1()); 
    }
)    this_ID_3=RULE_ID    {
		$current.merge(this_ID_3);
    }

    { 
    newLeafNode(this_ID_3, grammarAccess.getFilterAccess().getIDTerminalRuleCall_0_2()); 
    }
)(
	kw=',' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFilterAccess().getCommaKeyword_1_0()); 
    }
    this_ID_5=RULE_ID    {
		$current.merge(this_ID_5);
    }

    { 
    newLeafNode(this_ID_5, grammarAccess.getFilterAccess().getIDTerminalRuleCall_1_1()); 
    }
(
	kw='=' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFilterAccess().getEqualsSignKeyword_1_2_0()); 
    }

    |
	kw='!=' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFilterAccess().getExclamationMarkEqualsSignKeyword_1_2_1()); 
    }
)    this_ID_8=RULE_ID    {
		$current.merge(this_ID_8);
    }

    { 
    newLeafNode(this_ID_8, grammarAccess.getFilterAccess().getIDTerminalRuleCall_1_3()); 
    }
)?)
    ;





// Entry rule entryRuleDeadline
entryRuleDeadline returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDeadlineRule()); }
	 iv_ruleDeadline=ruleDeadline 
	 { $current=$iv_ruleDeadline.current; } 
	 EOF 
;

// Rule Deadline
ruleDeadline returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getDeadlineAccess().getTimerParserRuleCall_0()); 
    }
    this_Timer_0=ruleTimer
    { 
        $current = $this_Timer_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getDeadlineAccess().getWaitForVoteParserRuleCall_1()); 
    }
    this_WaitForVote_1=ruleWaitForVote
    { 
        $current = $this_WaitForVote_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getDeadlineAccess().getOCLConditionParserRuleCall_2()); 
    }
    this_OCLCondition_2=ruleOCLCondition
    { 
        $current = $this_OCLCondition_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleTimer
entryRuleTimer returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTimerRule()); }
	 iv_ruleTimer=ruleTimer 
	 { $current=$iv_ruleTimer.current; } 
	 EOF 
;

// Rule Timer
ruleTimer returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getTimerAccess().getTimerAction_0(),
            $current);
    }
)(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getTimerAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTimerRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2=':' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getTimerAccess().getColonKeyword_2());
    }
(
(
		lv_timeStamp_3_0=RULE_INT
		{
			newLeafNode(lv_timeStamp_3_0, grammarAccess.getTimerAccess().getTimeStampINTTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTimerRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"timeStamp",
        		lv_timeStamp_3_0, 
        		"INT");
	    }

)
)	otherlv_4='days' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getTimerAccess().getDaysKeyword_4());
    }
)
;





// Entry rule entryRuleOCLCondition
entryRuleOCLCondition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOCLConditionRule()); }
	 iv_ruleOCLCondition=ruleOCLCondition 
	 { $current=$iv_ruleOCLCondition.current; } 
	 EOF 
;

// Rule OCLCondition
ruleOCLCondition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_oclExpression_0_0=RULE_STRING
		{
			newLeafNode(lv_oclExpression_0_0, grammarAccess.getOCLConditionAccess().getOclExpressionSTRINGTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOCLConditionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"oclExpression",
        		lv_oclExpression_0_0, 
        		"STRING");
	    }

)
)
;





// Entry rule entryRuleWaitForVote
entryRuleWaitForVote returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWaitForVoteRule()); }
	 iv_ruleWaitForVote=ruleWaitForVote 
	 { $current=$iv_ruleWaitForVote.current; } 
	 EOF 
;

// Rule WaitForVote
ruleWaitForVote returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getWaitForVoteRule());
	        }
        }
	otherlv_0=RULE_ID
	{
		newLeafNode(otherlv_0, grammarAccess.getWaitForVoteAccess().getRolesRoleCrossReference_0_0()); 
	}

)
)(	otherlv_1=',' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getWaitForVoteAccess().getCommaKeyword_1_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getWaitForVoteRule());
	        }
        }
	otherlv_2=RULE_ID
	{
		newLeafNode(otherlv_2, grammarAccess.getWaitForVoteAccess().getRolesRoleCrossReference_1_1_0()); 
	}

)
))*)
;





// Rule CollaborationType
ruleCollaborationType returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='Task' 
	{
        $current = grammarAccess.getCollaborationTypeAccess().getTASKEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getCollaborationTypeAccess().getTASKEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='Patch' 
	{
        $current = grammarAccess.getCollaborationTypeAccess().getPATCHEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getCollaborationTypeAccess().getPATCHEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='Comment' 
	{
        $current = grammarAccess.getCollaborationTypeAccess().getCOMMENTEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getCollaborationTypeAccess().getCOMMENTEnumLiteralDeclaration_2()); 
    }
));



// Rule StageType
ruleStageType returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='TaskReview' 
	{
        $current = grammarAccess.getStageTypeAccess().getTASK_REVIEWEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getStageTypeAccess().getTASK_REVIEWEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='PatchReview' 
	{
        $current = grammarAccess.getStageTypeAccess().getPATCH_REVIEWEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getStageTypeAccess().getPATCH_REVIEWEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='Release' 
	{
        $current = grammarAccess.getStageTypeAccess().getRELEASEEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getStageTypeAccess().getRELEASEEnumLiteralDeclaration_2()); 
    }
));



// Rule RangeType
ruleRangeType returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='Present' 
	{
        $current = grammarAccess.getRangeTypeAccess().getPRESENTEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getRangeTypeAccess().getPRESENTEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='Qualified' 
	{
        $current = grammarAccess.getRangeTypeAccess().getQUALIFIEDEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getRangeTypeAccess().getQUALIFIEDEnumLiteralDeclaration_1()); 
    }
));



RULE_FLOAT : (('-'|'+')? (RULE_INT '.' RULE_INT|'.' RULE_INT|RULE_INT '.') ('e' ('-'|'+') RULE_INT)?|'1');

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


