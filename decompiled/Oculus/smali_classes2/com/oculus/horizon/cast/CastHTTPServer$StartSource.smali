.class public final enum Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;
.super Ljava/lang/Enum;
.source "CastHTTPServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cast/CastHTTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

.field public static final enum BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

.field public static final enum HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

.field public static final enum TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    const-string v1, "TWILIGHT"

    const-string v2, "twilight"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    .line 34
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    const-string v1, "HMD"

    const-string v2, "hmd"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    .line 35
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    const-string v1, "BROADCAST"

    const-string v2, "broadcast"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->$VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->$VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    return-object v0
.end method
