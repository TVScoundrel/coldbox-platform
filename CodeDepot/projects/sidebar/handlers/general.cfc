<!-----------------------------------------------------------------------Author 	 :	Your NameDate     :	September 25, 2005Description : 				This is a ColdBox event handler for general methods.Please note that the extends needs to point to the eventhandler.cfcin the ColdBox system directory.extends = coldbox.system.eventhandler	-----------------------------------------------------------------------><cfcomponent name="general" extends="coldbox.system.eventhandler" output="false">		<!--- This init is mandatory, including the super.init(). ---> 	<cffunction name="init" access="public" returntype="general" output="false">		<cfargument name="controller" type="any">		<cfset super.init(arguments.controller)>		<!--- Any constructor code here --->		<cfreturn this>	</cffunction>	<cffunction name="index" access="public" returntype="void" output="false">		<cfargument name="Event" type="any">		<!--- Do Your Logic Here to prepare a view --->		<cfset Event.setValue("welcomeMessage","Welcome to ColdBox!")>			<!--- Set the View To Display, after Logic --->		<cfset Event.setView("home")>	</cffunction>	<cffunction name="dspSideBar" access="public" returntype="void" output="false">		<cfargument name="Event" type="any">		<cfset Event.setView("sideBar")>	</cffunction>	</cfcomponent>