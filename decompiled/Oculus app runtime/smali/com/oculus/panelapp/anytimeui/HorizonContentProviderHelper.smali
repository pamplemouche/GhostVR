.class public Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;
.super Ljava/lang/Object;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;,
        Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$BaseCallback;
    }
.end annotation


# static fields
.field private static final ID_LIST_DELIMITER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getLinkedAccountsInfoForViewerFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/PartyInfo;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getPartyInfoWithActivityFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/PartyInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getFriendDataFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getPartyIDFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/SocialActivityData;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getActivityFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/SocialActivityData;

    move-result-object p0

    return-object p0
.end method

.method public static createParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    if-nez p1, :cond_0

    .line 81
    sget-object p0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_CREATE:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_CREATE:Landroid/net/Uri;

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "invite_activity_id"

    .line 86
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    move-object v3, p0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    .line 89
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final fetchActivityCallback(Landroid/content/Context;Ljava/lang/String;ZLcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;)V
    .locals 8

    .line 424
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;)V

    .line 447
    sget-object p0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

    .line 449
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p3, "activity_id"

    .line 450
    invoke-virtual {p0, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    const-string p1, "SENDER"

    goto :goto_0

    :cond_0
    const-string p1, "RECEIVER"

    :goto_0
    const-string p2, "role"

    .line 451
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    .line 454
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final fetchInvitableFriends(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V
    .locals 8

    .line 305
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V

    .line 327
    sget-object v3, Lcom/oculus/provider/HorizonContent$FriendList;->FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final fetchLinkedAccountsInfoForViewer(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;)V
    .locals 8

    .line 204
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$3;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$3;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;)V

    .line 222
    sget-object p0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 224
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final fetchPartyInfoWithActivity(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;)V
    .locals 8

    .line 239
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$4;

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$4;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;)V

    .line 258
    sget-object p0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_PARTY_INFO_WITH_ACTIVITY:Landroid/net/Uri;

    .line 260
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "party_id"

    .line 261
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 264
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getActivityFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/SocialActivityData;
    .locals 11

    const-string v0, "title"

    .line 133
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "subtitle"

    .line 134
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "image_uri"

    .line 135
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "package_name"

    .line 136
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deeplink"

    .line 137
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 139
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_0
    new-instance v6, Lcom/oculus/panelapp/anytimeui/SocialActivityData;

    const-string v5, ""

    .line 144
    invoke-static {p0, v0, v5}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-static {p0, v1, v5}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-static {p0, v2, v5}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    invoke-static {p0, v3, v5}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-static {p0, v4, v5}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/SocialActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private static getFriendDataFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 154
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 155
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "presence"

    .line 156
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "profile_image_url"

    .line 157
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "invite_state"

    .line 158
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "current_party_id"

    .line 159
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    .line 162
    invoke-interface {p0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 164
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v7, Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    const-string v8, ""

    .line 173
    invoke-static {p0, v1, v8}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-static {p0, v2, v8}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-static {p0, v3, v8}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-static {p0, v4, v8}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-static {}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->values()[Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    move-result-object v8

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    aget-object v13, v8, v13

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/oculus/panelapp/anytimeui/FriendListRowData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)V

    .line 171
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getIntFromIndex(Landroid/database/Cursor;II)I
    .locals 0

    if-gez p1, :cond_0

    return p2

    .line 129
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static getLinkedAccountsInfoForViewerFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;
    .locals 3

    .line 228
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "is_facebook_linked"

    .line 232
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 233
    new-instance v1, Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;

    const-string v2, ""

    .line 234
    invoke-static {p0, v0, v2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;-><init>(Z)V

    return-object v1
.end method

.method private static getPartyIDFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "current_party_id"

    .line 184
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 187
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static getPartyInfoWithActivityFromCursor(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/PartyInfo;
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "party_id"

    .line 268
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "party_blocked_invited_users"

    .line 270
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "party_invited_users"

    .line 271
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "party_blocked_current_users"

    .line 272
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "party_current_users"

    .line 273
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "party_activity_id"

    .line 274
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "party_activity_title"

    .line 275
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "party_activity_subtitle"

    .line 276
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "party_activity_deeplink"

    .line 277
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "party_activity_image_uri"

    .line 278
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "party_activity_package_name"

    .line 280
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "party_activity_app_id"

    .line 281
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 284
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_0
    new-instance v14, Lcom/oculus/panelapp/anytimeui/PartyInfo;

    const-string v13, ""

    .line 289
    invoke-static {v0, v1, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 290
    invoke-static {v0, v2, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 291
    invoke-static {v0, v3, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 292
    invoke-static {v0, v4, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 293
    invoke-static {v0, v5, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 294
    invoke-static {v0, v6, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 295
    invoke-static {v0, v7, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 296
    invoke-static {v0, v8, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 297
    invoke-static {v0, v9, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 298
    invoke-static {v0, v10, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 299
    invoke-static {v0, v11, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 300
    invoke-static {v0, v12, v13}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    invoke-direct/range {v1 .. v13}, Lcom/oculus/panelapp/anytimeui/PartyInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public static final getPartyLocalMute(Landroid/content/Context;)I
    .locals 3

    .line 416
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_GET_SELF_MUTE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getPartyVolume(Landroid/content/Context;)F
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_GET_VOLUME:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 386
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "party_volume"

    .line 391
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 392
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    .line 387
    :cond_2
    :goto_0
    :try_start_1
    sget-object p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->TAG:Ljava/lang/String;

    const-string v2, "getPartyVolume null cursor"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 394
    :try_start_2
    sget-object v2, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error getting party volume"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method private static getStringFromIndex(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-gez p1, :cond_0

    return-object p2

    .line 122
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static inviteUsersToParty(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;)V

    .line 110
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string p0, "party_id"

    .line 111
    invoke-virtual {v4, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ":"

    .line 112
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "user_ids"

    invoke-virtual {v4, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v3, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static final joinParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
    .locals 7

    .line 332
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$6;

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$6;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    .line 344
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string p0, "party_id"

    .line 345
    invoke-virtual {v4, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v3, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_JOIN:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static final leaveParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
    .locals 7

    .line 352
    new-instance v0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;-><init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V

    .line 364
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string p0, "party_id"

    .line 365
    invoke-virtual {v4, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v3, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_LEAVE:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static final setPartyLocalMute(Landroid/content/Context;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 405
    invoke-static {p1}, Lcom/oculus/provider/HorizonContent$PlatformPluginManager$MicrophoneMuteState;->validate(I)I

    .line 407
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "party_self_mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_SET_SELF_MUTE:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final setPartyVolume(Landroid/content/Context;F)V
    .locals 2

    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 372
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "party_volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_SET_VOLUME:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 377
    sget-object p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->TAG:Ljava/lang/String;

    const-string p1, "Error setting party volume"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
