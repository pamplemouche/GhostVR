.class public final enum Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;
.super Ljava/lang/Enum;
.source "FriendRequestSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/request/FriendRequestSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

.field public static final enum PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

.field public static final enum SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    const-string v1, "PROFILE"

    const-string v2, "PROFILE"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    .line 10
    new-instance v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    const-string v1, "SEARCH"

    const-string v2, "SEARCH"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    sget-object v1, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->$VALUES:[Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->value:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->$VALUES:[Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0}, [Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->value:Ljava/lang/String;

    return-object v0
.end method
