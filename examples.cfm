<!---
Filename: examples.cfm
Creation Date: 20/July/2007
Original Author: Andy Jarrett
Revision: $Rev:14 $
$LastChangedBy:andyj $
$LastChangedDate:2007-11-17 15:36:21 +0000 (Sat, 17 Nov 2007) $
Description:
A file to test TwitterCFC.cfc

--->

<!--- call the init() method  --->
<cfset twitterObj = createObject('component', 'twitterCFC').init('username','password') />


<!--- Post to twitter --->
<cfset twitterObj.postToTwitter("This is a post from TwitterCFC by Andy Jarrett http://twittercfc.riaforge.com") />


<!--- Get your timeline with friends --->
<cfset friendsTimeline = twitterObj.getFriendsTimeLine() />
<!--- OUTPUT:
<cfcontent type="text/xml"><cfoutput>#friendsTimeline#</cfoutput>
 --->



<!--- Get the public timeline --->
<cfset publicTimeline =twitterObj.getPublicTimeline() />
<!--- OUTPUT: 
<cfcontent type="text/xml"><cfoutput>#publicTimeline#</cfoutput>--->
