.class public Lcom/oculus/provider/OculusContent$FriendList;
.super Ljava/lang/Object;
.source "OculusContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/provider/OculusContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;
    }
.end annotation


# static fields
.field public static final ACTIVITY_APP_PACKAGE_NAME_COLUMN:Ljava/lang/String; = "package_name"

.field public static final ACTIVITY_DEEPLINK_COLUMN:Ljava/lang/String; = "deeplink"

.field public static final ACTIVITY_ID_PARAM:Ljava/lang/String; = "activity_id"

.field public static final ACTIVITY_IMAGE_URI_COLUMN:Ljava/lang/String; = "image_uri"

.field public static final ACTIVITY_SUBTITLE_COLUMN:Ljava/lang/String; = "subtitle"

.field public static final ACTIVITY_TITLE_COLUMN:Ljava/lang/String; = "title"

.field public static final AUTHORITY:Ljava/lang/String;

.field public static final CURRENT_PARTY_ID_COLUMN:Ljava/lang/String; = "current_party_id"

.field public static final FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

.field public static final GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

.field public static final INVITE_ACTIVITY_ID_VALUE:Ljava/lang/String; = "invite_activity_id"

.field public static final INVITE_STATE_COLUMN:Ljava/lang/String; = "invite_state"

.field public static final IS_FACEBOOK_LINKED_COLUMN:Ljava/lang/String; = "is_facebook_linked"

.field public static final PARTY_ACTIVITY_APP_ID_COLUMN:Ljava/lang/String; = "party_activity_app_id"

.field public static final PARTY_ACTIVITY_DEEPLINK_COLUMN:Ljava/lang/String; = "party_activity_deeplink"

.field public static final PARTY_ACTIVITY_ID_COLUMN:Ljava/lang/String; = "party_activity_id"

.field public static final PARTY_ACTIVITY_IMAGE_URI_COLUMN:Ljava/lang/String; = "party_activity_image_uri"

.field public static final PARTY_ACTIVITY_PACKAGE_NAME_COLUMN:Ljava/lang/String; = "party_activity_package_name"

.field public static final PARTY_ACTIVITY_PREFIX:Ljava/lang/String; = "party_activity_"

.field public static final PARTY_ACTIVITY_SUBTITLE_COLUMN:Ljava/lang/String; = "party_activity_subtitle"

.field public static final PARTY_ACTIVITY_TITLE_COLUMN:Ljava/lang/String; = "party_activity_title"

.field public static final PARTY_BLOCKED_INVITED_USERS_COLUMN:Ljava/lang/String; = "party_blocked_invited_users"

.field public static final PARTY_BLOCKED_USERS_COLUMN:Ljava/lang/String; = "party_blocked_current_users"

.field public static final PARTY_CREATE:Landroid/net/Uri;

.field public static final PARTY_GET_INFO_WITH_ACTIVITY:Landroid/net/Uri;

.field public static final PARTY_GET_SELF_MUTE:Landroid/net/Uri;

.field public static final PARTY_GET_VOLUME:Landroid/net/Uri;

.field public static final PARTY_ID_PARAM:Ljava/lang/String; = "party_id"

.field public static final PARTY_ID_VALUE:Ljava/lang/String; = "party_id"

.field public static final PARTY_INVITED_USERS_COLUMN:Ljava/lang/String; = "party_invited_users"

.field public static final PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

.field public static final PARTY_JOIN:Landroid/net/Uri;

.field public static final PARTY_LEAVE:Landroid/net/Uri;

.field public static final PARTY_SELF_MUTE_VALUE:Ljava/lang/String; = "party_self_mute"

.field public static final PARTY_SET_SELF_MUTE:Landroid/net/Uri;

.field public static final PARTY_SET_TYPE:Landroid/net/Uri;

.field public static final PARTY_SET_VOLUME:Landroid/net/Uri;

.field public static final PARTY_TYPE_VALUE:Ljava/lang/String; = "party_type"

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
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/provider/OculusContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".friendlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_invitable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/social_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_invite_users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_CREATE:Landroid/net/Uri;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_join"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_JOIN:Landroid/net/Uri;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_leave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_LEAVE:Landroid/net/Uri;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_set_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_TYPE:Landroid/net/Uri;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_set_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_VOLUME:Landroid/net/Uri;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_get_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_VOLUME:Landroid/net/Uri;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_set_self_mute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_SELF_MUTE:Landroid/net/Uri;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_get_self_mute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_SELF_MUTE:Landroid/net/Uri;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/party_get_info_with_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_INFO_WITH_ACTIVITY:Landroid/net/Uri;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/get_linked_accounts_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/provider/OculusContent$FriendList;->GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
