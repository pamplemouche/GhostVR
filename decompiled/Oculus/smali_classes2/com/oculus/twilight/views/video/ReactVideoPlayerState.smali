.class public final enum Lcom/oculus/twilight/views/video/ReactVideoPlayerState;
.super Ljava/lang/Enum;
.source "ReactVideoPlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/twilight/views/video/ReactVideoPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum BUFFERING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum ENDED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum ERROR:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum IDLE:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum READY:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

.field public static final enum UNDEFINED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;


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
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->IDLE:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 8
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 9
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->READY:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 10
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v6}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->BUFFERING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 11
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 12
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "ENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ENDED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 13
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ERROR:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 14
    new-instance v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->UNDEFINED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->IDLE:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->READY:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->BUFFERING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ENDED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ERROR:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->UNDEFINED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->$VALUES:[Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/twilight/views/video/ReactVideoPlayerState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/twilight/views/video/ReactVideoPlayerState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->$VALUES:[Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-virtual {v0}, [Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    return-object v0
.end method
