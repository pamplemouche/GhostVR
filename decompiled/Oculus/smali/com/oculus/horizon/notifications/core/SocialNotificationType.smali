.class public final enum Lcom/oculus/horizon/notifications/core/SocialNotificationType;
.super Ljava/lang/Enum;
.source "SocialNotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/core/SocialNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum ACHIEVEMENT_UNLOCKED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum OC_FACEBOOK_LINK_STATUS_CHANGED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

.field public static final enum USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;


# instance fields
.field public final graphQLName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "EVENT_START"

    const-string v2, "oculus_event_start"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 10
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "EVENT_INVITE"

    const-string v2, "oc_vr_event_invite"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "FRIEND_REQUEST_RECEIVED"

    const-string v2, "oculus_friend_request"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 12
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "FRIEND_REQUEST_ACCEPTED"

    const-string v2, "oculus_friend_request_accept"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 13
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "MESSAGING_NEW_MESSAGE"

    const-string v2, "oculus_messaging_new_message"

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 14
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "PARTY_INVITE_RECEIVED"

    const/4 v2, 0x5

    const-string v3, "oculus_party_invite"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 15
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "PARTY_GATHER_IN_APPLICATION_RECEIVED"

    const/4 v2, 0x6

    const-string v3, "oculus_party_gather_in_application"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 16
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "PARTY_UNINVITE_RECEIVED"

    const/4 v2, 0x7

    const-string v3, "oculus_party_uninvite"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 17
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "PARTY_UPDATE_RECEIVED"

    const/16 v2, 0x8

    const-string v3, "oculus_party_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 18
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "ROOM_INVITE_RECEIVED"

    const/16 v2, 0x9

    const-string v3, "oculus_room_invite"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 19
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "USER_STATUS_UPDATED"

    const/16 v2, 0xa

    const-string v3, "oculus_user_status"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 20
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "ACHIEVEMENT_UNLOCKED"

    const/16 v2, 0xb

    const-string v3, "oculus_achievement_unlock"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ACHIEVEMENT_UNLOCKED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 21
    new-instance v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    const-string v1, "OC_FACEBOOK_LINK_STATUS_CHANGED"

    const/16 v2, 0xc

    const-string v3, "oc_facebook_link_status_changed"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->OC_FACEBOOK_LINK_STATUS_CHANGED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    .line 6
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ACHIEVEMENT_UNLOCKED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->OC_FACEBOOK_LINK_STATUS_CHANGED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static isEventNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFriendRelatedNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFromAccepter(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFromSender(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMessagingNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotShownToUser(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->OC_FACEBOOK_LINK_STATUS_CHANGED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPartyNotification(Lcom/oculus/horizon/notifications/core/NotificationType;)Z
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/notifications/core/NotificationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITED_TO_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 83
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/notifications/core/NotificationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_GATHER_IN_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 84
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/notifications/core/NotificationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPartyNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPresenceNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoomInviteNotification(Lcom/oculus/horizon/notifications/core/NotificationType;)Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->ROOM_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/notifications/core/NotificationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRoomInviteNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSocialNotification(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ROOM_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->MESSAGING_NEW_MESSAGE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_INVITE:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ACHIEVEMENT_UNLOCKED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->OC_FACEBOOK_LINK_STATUS_CHANGED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldExcludeFromMarkingRead(Lcom/oculus/horizon/notifications/core/NotificationType;)Z
    .locals 1

    .prologue
    .line 113
    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPartyNotification(Lcom/oculus/horizon/notifications/core/NotificationType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isRoomInviteNotification(Lcom/oculus/horizon/notifications/core/NotificationType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldExcludeFromMarkingRead(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPartyNotification(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isRoomInviteNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/SocialNotificationType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/core/SocialNotificationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/core/SocialNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    return-object v0
.end method
