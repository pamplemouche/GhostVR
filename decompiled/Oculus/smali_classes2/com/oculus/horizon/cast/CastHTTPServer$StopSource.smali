.class public final enum Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;
.super Ljava/lang/Enum;
.source "CastHTTPServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cast/CastHTTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StopSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum CLIENT_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum HMD_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum NEW_START:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum OTHER_CAPTURE_STARTING:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum STANDBY:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

.field public static final enum TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "TWILIGHT"

    const-string v2, "twilight"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 46
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "HMD"

    const-string v2, "hmd"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 47
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "BROADCAST"

    const-string v2, "broadcast"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 48
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "STANDBY"

    const-string v2, "standby"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->STANDBY:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 49
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "NEW_START"

    const-string v2, "new_start"

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->NEW_START:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 50
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "CLIENT_ERROR"

    const/4 v2, 0x5

    const-string v3, "client_error"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->CLIENT_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 51
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "HMD_ERROR"

    const/4 v2, 0x6

    const-string v3, "hmd_error"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->HMD_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 52
    new-instance v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    const-string v1, "OTHER_CAPTURE_STARTING"

    const/4 v2, 0x7

    const-string v3, "other_capture_starting"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->OTHER_CAPTURE_STARTING:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->STANDBY:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->NEW_START:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->CLIENT_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->HMD_ERROR:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->OTHER_CAPTURE_STARTING:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->$VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->$VALUES:[Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    return-object v0
.end method
