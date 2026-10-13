.class public final enum Lcom/oculus/horizon/legacy/social/adapters/ViewType;
.super Ljava/lang/Enum;
.source "ViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/legacy/social/adapters/ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum ACHIEVEMENT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum ACHIEVEMENTS_NUM_SECRET_LOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum ACHIEVEMENTS_NUM_SECRET_UNLOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum BLOCKED_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FIND_FACEBOOK_FRIENDS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FRIEND:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FRIENDS_ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FRIEND_REQUESTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum FRIEND_REQUEST_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum GAME_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum LOADING_INDICATOR:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum NO_BLOCKED_USER_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum NO_FRIENDS_SECTION:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum NO_RESULTS_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum PARTY_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum PROFILE_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum SEARCH_RESULT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum SELECTABLE_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

.field public static final enum USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 8
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FRIEND"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 9
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 10
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FRIEND_REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FRIEND_REQUESTS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUESTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 12
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "GAME_INVITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 13
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "PARTY_INVITE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 14
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "GAME_INVITES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 15
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "PARTY_INVITES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 16
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "LOADING_INDICATOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->LOADING_INDICATOR:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 17
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "NO_RESULTS_MESSAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_RESULTS_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 18
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "NO_FRIENDS_SECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_FRIENDS_SECTION:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 19
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FRIEND_REQUEST_HEADER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 20
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "PROFILE_HEADER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PROFILE_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 21
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FIND_FACEBOOK_FRIENDS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FIND_FACEBOOK_FRIENDS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 22
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "SEARCH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 23
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "SEARCH_RESULT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH_RESULT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 24
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "SELECTABLE_USER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SELECTABLE_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 25
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "USER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 26
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "BLOCKED_USER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->BLOCKED_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 27
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "NO_BLOCKED_USER_MESSAGE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_BLOCKED_USER_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 28
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "ENTITLEMENTS_WITH_ACHIEVEMENTS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 29
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "FRIENDS_ACHIEVEMENTS_HEADER"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIENDS_ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 30
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "ACHIEVEMENTS_HEADER"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 31
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "ACHIEVEMENTS_NUM_SECRET_LOCKED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_NUM_SECRET_LOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 32
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "ACHIEVEMENTS_NUM_SECRET_UNLOCKED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_NUM_SECRET_UNLOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 33
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    const-string v1, "ACHIEVEMENT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 6
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget-object v1, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUESTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->LOADING_INDICATOR:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_RESULTS_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_FRIENDS_SECTION:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PROFILE_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FIND_FACEBOOK_FRIENDS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH_RESULT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SELECTABLE_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->BLOCKED_USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_BLOCKED_USER_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIENDS_ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_NUM_SECRET_LOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_NUM_SECRET_UNLOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->$VALUES:[Lcom/oculus/horizon/legacy/social/adapters/ViewType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->$VALUES:[Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/legacy/social/adapters/ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    return-object v0
.end method
