.class public Lcom/oculus/provider/HorizonContent$FriendList;
.super Ljava/lang/Object;
.source "HorizonContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/provider/HorizonContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;
    }
.end annotation


# static fields
.field public static final ACTIVITY_APP_PACKAGE_NAME_COLUMN:Ljava/lang/String; = "package_name"

.field public static final ACTIVITY_DEEPLINK_COLUMN:Ljava/lang/String; = "deeplink"

.field public static final ACTIVITY_ID_PARAM:Ljava/lang/String; = "activity_id"

.field public static final ACTIVITY_IMAGE_URI_COLUMN:Ljava/lang/String; = "image_uri"

.field public static final ACTIVITY_SUBTITLE_COLUMN:Ljava/lang/String; = "subtitle"

.field public static final ACTIVITY_TITLE_COLUMN:Ljava/lang/String; = "title"

.field public static final AUTHORITY:Ljava/lang/String; = "com.oculus.horizon.friendlist"

.field public static final CURRENT_PARTY_ID_COLUMN:Ljava/lang/String; = "current_party_id"

.field public static final FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

.field public static final GET_PARTY_INFO_WITH_ACTIVITY:Landroid/net/Uri;

.field public static final GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

.field public static final INVITE_ACTIVITY_ID_VALUE:Ljava/lang/String; = "invite_activity_id"

.field public static final INVITE_STATE_COLUMN:Ljava/lang/String; = "invite_state"

.field public static final IS_FACEBOOK_LINKED_COLUMN:Ljava/lang/String; = "is_facebook_linked"

.field public static final PARTY_ACTIVITY_APP_ID_COLUMN:Ljava/lang/String; = "party_activity_app_id"

.field public static final PARTY_ACTIVITY_DEEPLINK_COLUMN:Ljava/lang/String; = "party_activity_deeplink"

.field public static final PARTY_ACTIVITY_ID_COLUMN:Ljava/lang/String; = "party_activity_id"

.field public static final PARTY_ACTIVITY_IMAGE_URI_COLUMN:Ljava/lang/String; = "party_activity_image_uri"

.field public static final PARTY_ACTIVITY_PACKAGE_NAME_COLUMN:Ljava/lang/String; = "party_activity_package_name"

.field public static final PARTY_ACTIVITY_SUBTITLE_COLUMN:Ljava/lang/String; = "party_activity_subtitle"

.field public static final PARTY_ACTIVITY_TITLE_COLUMN:Ljava/lang/String; = "party_activity_title"

.field public static final PARTY_BLOCKED_INVITED_USERS_COLUMN:Ljava/lang/String; = "party_blocked_invited_users"

.field public static final PARTY_BLOCKED_USERS_COLUMN:Ljava/lang/String; = "party_blocked_current_users"

.field public static final PARTY_CREATE:Landroid/net/Uri;

.field public static final PARTY_DIALOG_SOURCE:Ljava/lang/String; = "source"

.field public static final PARTY_GET_SELF_MUTE:Landroid/net/Uri;

.field public static final PARTY_GET_VOLUME:Landroid/net/Uri;

.field public static final PARTY_ID_COLUMN:Ljava/lang/String; = "party_id"

.field public static final PARTY_ID_PARAM:Ljava/lang/String; = "party_id"

.field public static final PARTY_ID_VALUE:Ljava/lang/String; = "party_id"

.field public static final PARTY_INVITED_USERS_COLUMN:Ljava/lang/String; = "party_invited_users"

.field public static final PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

.field public static final PARTY_JOIN:Landroid/net/Uri;

.field public static final PARTY_LEAVE:Landroid/net/Uri;

.field public static final PARTY_SELF_MUTE_VALUE:Ljava/lang/String; = "party_self_mute"

.field public static final PARTY_SET_SELF_MUTE:Landroid/net/Uri;

.field public static final PARTY_SET_VOLUME:Landroid/net/Uri;

.field public static final PARTY_USERS_COLUMN:Ljava/lang/String; = "party_current_users"

.field public static final PARTY_VOLUME_COLUMN:Ljava/lang/String; = "party_volume"

.field public static final PARTY_VOLUME_VALUE:Ljava/lang/String; = "party_volume"

.field public static final PRESENCE_COLUMN:Ljava/lang/String; = "presence"

.field public static final PROFILE_IMAGE_URL:Ljava/lang/String; = "profile_image_url"

.field public static final ROLE_PARAM:Ljava/lang/String; = "role"

.field public static final USER_IDS_VALUE:Ljava/lang/String; = "user_ids"

.field public static final USER_ID_COLUMN:Ljava/lang/String; = "id"

.field public static final USER_ID_VALUE:Ljava/lang/String; = "user_id"

.field public static final USER_NAME_COLUMN:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.oculus.horizon.friendlist/party_invitable"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/social_activity"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_invite_users"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_create"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_CREATE:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_join"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_JOIN:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_leave"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_LEAVE:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_set_volume"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_SET_VOLUME:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_get_volume"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_GET_VOLUME:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_set_self_mute"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_SET_SELF_MUTE:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_get_self_mute"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->PARTY_GET_SELF_MUTE:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/party_get_info_with_activity"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_PARTY_INFO_WITH_ACTIVITY:Landroid/net/Uri;

    const-string v0, "content://com.oculus.horizon.friendlist/get_linked_accounts_info"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/HorizonContent$FriendList;->GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
