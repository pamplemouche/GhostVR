.class public final enum Lcom/oculus/horizon/notifications/core/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/notifications/core/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum APP_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum FACEBOOK_FRIEND_ADDED:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum FBCONNECT:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum FRIEND_REQUEST:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum FRIEND_REQUEST_ACCEPT:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum FRIEND_REQUEST_REMOVE:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum MATCHMAKING_MATCHMADE:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum NETWORKING_SEND_BLOB:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum NEW_USER_ENGAGE_APP:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum NEW_USER_FEED_AWARENESS:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum PARTY_GATHER_IN_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum PARTY_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum PARTY_INVITED_TO_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum PUSH_TOKEN_REGISTRATION:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum ROOM_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum ROOM_UPDATE:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum STORE_SALE_BEGINS:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum STORE_SALE_ENDS:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum TEST_DATA:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum TEST_VIEW:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum UNKNOWN:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum USER_STATUS:Lcom/oculus/horizon/notifications/core/NotificationType;

.field public static final enum VIDEO_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "OC_DEVELOPER_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 10
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "FACEBOOK_FRIEND_ADDED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->FACEBOOK_FRIEND_ADDED:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "FBCONNECT"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->FBCONNECT:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 12
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "FRIEND_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 13
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "FRIEND_REQUEST_ACCEPT"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST_ACCEPT:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 14
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "FRIEND_REQUEST_REMOVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST_REMOVE:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 15
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "MATCHMAKING_MATCHMADE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->MATCHMAKING_MATCHMADE:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 16
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "NETWORKING_SEND_BLOB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->NETWORKING_SEND_BLOB:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 17
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "NEW_USER_ENGAGE_APP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->NEW_USER_ENGAGE_APP:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 18
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "NEW_USER_FEED_AWARENESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->NEW_USER_FEED_AWARENESS:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 19
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "APP_RECOMMENDATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->APP_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 20
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "PARTY_INVITE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 21
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "PARTY_INVITED_TO_APPLICATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITED_TO_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 22
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "PARTY_GATHER_IN_APPLICATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_GATHER_IN_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 23
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "PUSH_TOKEN_REGISTRATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->PUSH_TOKEN_REGISTRATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 24
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "ROOM_INVITE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->ROOM_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 25
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "ROOM_UPDATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->ROOM_UPDATE:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 26
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "STORE_SALE_BEGINS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->STORE_SALE_BEGINS:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 27
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "STORE_SALE_ENDS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->STORE_SALE_ENDS:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 28
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "TEST_DATA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->TEST_DATA:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 29
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "TEST_VIEW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->TEST_VIEW:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 30
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "USER_STATUS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->USER_STATUS:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 31
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "VIDEO_RECOMMENDATION"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->VIDEO_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 32
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->UNKNOWN:Lcom/oculus/horizon/notifications/core/NotificationType;

    .line 8
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/oculus/horizon/notifications/core/NotificationType;

    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->FACEBOOK_FRIEND_ADDED:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->FBCONNECT:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST_ACCEPT:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->FRIEND_REQUEST_REMOVE:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->MATCHMAKING_MATCHMADE:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->NETWORKING_SEND_BLOB:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->NEW_USER_ENGAGE_APP:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->NEW_USER_FEED_AWARENESS:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->APP_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_INVITED_TO_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->PARTY_GATHER_IN_APPLICATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->PUSH_TOKEN_REGISTRATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->ROOM_INVITE:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->ROOM_UPDATE:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->STORE_SALE_BEGINS:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->STORE_SALE_ENDS:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->TEST_DATA:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->TEST_VIEW:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->USER_STATUS:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->VIDEO_RECOMMENDATION:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationType;->UNKNOWN:Lcom/oculus/horizon/notifications/core/NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/NotificationType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/core/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/notifications/core/NotificationType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationType;->$VALUES:[Lcom/oculus/horizon/notifications/core/NotificationType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/notifications/core/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/notifications/core/NotificationType;

    return-object v0
.end method
