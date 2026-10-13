.class public final enum Lcom/oculus/horizon/social/model/SocialData;
.super Ljava/lang/Enum;
.source "SocialData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/model/SocialData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum BLOCKED_USERS:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum FACEBOOK_FRIEND_POLICY:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum FRIENDS:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum FRIEND_REQUESTS:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum GAME_INVITES:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum PARTY_INVITES:Lcom/oculus/horizon/social/model/SocialData;

.field public static final enum USER_PROFILE:Lcom/oculus/horizon/social/model/SocialData;


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
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->FRIENDS:Lcom/oculus/horizon/social/model/SocialData;

    .line 8
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "USER_PROFILE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->USER_PROFILE:Lcom/oculus/horizon/social/model/SocialData;

    .line 9
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "ENTITLEMENTS_WITH_ACHIEVEMENTS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    .line 10
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "ACHIEVEMENTS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    .line 11
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "FRIEND_REQUESTS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->FRIEND_REQUESTS:Lcom/oculus/horizon/social/model/SocialData;

    .line 12
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "GAME_INVITES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->GAME_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    .line 13
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "BLOCKED_USERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->BLOCKED_USERS:Lcom/oculus/horizon/social/model/SocialData;

    .line 14
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "FACEBOOK_FRIEND_POLICY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->FACEBOOK_FRIEND_POLICY:Lcom/oculus/horizon/social/model/SocialData;

    .line 15
    new-instance v0, Lcom/oculus/horizon/social/model/SocialData;

    const-string v1, "PARTY_INVITES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/model/SocialData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->PARTY_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oculus/horizon/social/model/SocialData;

    sget-object v1, Lcom/oculus/horizon/social/model/SocialData;->FRIENDS:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/model/SocialData;->USER_PROFILE:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/social/model/SocialData;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/social/model/SocialData;->ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/social/model/SocialData;->FRIEND_REQUESTS:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/social/model/SocialData;->GAME_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/social/model/SocialData;->BLOCKED_USERS:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/social/model/SocialData;->FACEBOOK_FRIEND_POLICY:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/social/model/SocialData;->PARTY_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/social/model/SocialData;->$VALUES:[Lcom/oculus/horizon/social/model/SocialData;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/social/model/SocialData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/SocialData;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/model/SocialData;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->$VALUES:[Lcom/oculus/horizon/social/model/SocialData;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/model/SocialData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/model/SocialData;

    return-object v0
.end method
