//
//  YDDefinitions.h
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#ifndef YDChat_YDDefinitions_h
#define YDChat_YDDefinitions_h

//Menu Items
static const NSString*  YDSLideMenuStateNotificationEvent = @"YDSlideMenuStateNotificationEvent";
static const float tablewidth  = 270.0f;

#define kMenuHomeTag                @"kMenuHomeTag"
#define kMenuChatsTag               @"kMenuChatsTag"
#define kMenuContactsTag            @"kMenuContactsTag"
#define kMenuGroupChatTag           @"kMenuGroupChatTag"
#define kMenuSettingsTag            @"kMenuSettingsTag"

#define kXMPPmyJID                  @"kXMPPmyJID"
#define kxmppHTTPRegistrationUrl @"http://openfire.yourdeveloper.net:9090/plugins/userService/userservice?type=add&secret=V3q2GdGx&username=%@&password=%@&name=%@&email=%@"

#define kXMPPServer                 @"openfire.yourdeveloper.net"
#define kxmppProxyServer            @"openfire.yourdeveloper.net"
#define kxmppConferenceServer       @"@conference.openfire.yourdeveloper.net"
#define kxmppSearchServer           @"search.openfire.yourdeveloper.net"

#endif
