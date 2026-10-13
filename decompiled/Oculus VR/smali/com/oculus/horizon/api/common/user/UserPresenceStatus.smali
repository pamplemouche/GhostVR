.class public final enum Lcom/oculus/horizon/api/common/user/UserPresenceStatus;
.super Ljava/lang/Enum;
.source "UserPresenceStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/common/user/UserPresenceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

.field public static final enum OFFLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

.field public static final enum ONLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;


# instance fields
.field public final graphQLName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    const-string v1, "ONLINE"

    const-string v2, "ONLINE"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->ONLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    .line 8
    new-instance v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    const-string v1, "OFFLINE"

    const-string v2, "OFFLINE"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->OFFLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    sget-object v1, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->ONLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->OFFLINE:Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->$VALUES:[Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->graphQLName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/common/user/UserPresenceStatus;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/common/user/UserPresenceStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->$VALUES:[Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/common/user/UserPresenceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/common/user/UserPresenceStatus;

    return-object v0
.end method
