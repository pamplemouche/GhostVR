.class public final enum Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;
.super Ljava/lang/Enum;
.source "FBFriendPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

.field public static final enum AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

.field public static final enum IGNORE_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    const-string v1, "AUTO_FRIEND"

    const-string v2, "AUTO_FRIEND"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    .line 14
    new-instance v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    const-string v1, "IGNORE_FRIEND"

    const-string v2, "IGNORE_FRIEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->IGNORE_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    sget-object v1, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->IGNORE_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->$VALUES:[Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->values()[Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 33
    iget-object v5, v1, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->value:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 34
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->$VALUES:[Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->value:Ljava/lang/String;

    return-object v0
.end method
