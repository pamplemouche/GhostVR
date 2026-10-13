.class final enum Lcom/oculus/video/analytics/VideoSessionState;
.super Ljava/lang/Enum;
.source "VideoAnalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/analytics/VideoSessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum INIT:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum LOADING:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum RESUMING:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum SEEKING:Lcom/oculus/video/analytics/VideoSessionState;

.field public static final enum SESSION_END:Lcom/oculus/video/analytics/VideoSessionState;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 247
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v1, 0x0

    const-string v2, "INIT"

    const-string v3, "init"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->INIT:Lcom/oculus/video/analytics/VideoSessionState;

    .line 248
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v2, 0x1

    const-string v3, "PLAYING"

    const-string v4, "playing"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 249
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v3, 0x2

    const-string v4, "SEEKING"

    const-string v5, "seeking"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->SEEKING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 250
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    const-string v6, "paused"

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

    .line 251
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v5, 0x4

    const-string v6, "LOADING"

    const-string v7, "loading"

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->LOADING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 252
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v6, 0x5

    const-string v7, "SESSION_END"

    const-string v8, "session_end"

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->SESSION_END:Lcom/oculus/video/analytics/VideoSessionState;

    .line 253
    new-instance v0, Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v7, 0x6

    const-string v8, "RESUMING"

    const-string v9, "resuming"

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/video/analytics/VideoSessionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->RESUMING:Lcom/oculus/video/analytics/VideoSessionState;

    const/4 v0, 0x7

    .line 246
    new-array v0, v0, [Lcom/oculus/video/analytics/VideoSessionState;

    sget-object v8, Lcom/oculus/video/analytics/VideoSessionState;->INIT:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->SEEKING:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->LOADING:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->SESSION_END:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->RESUMING:Lcom/oculus/video/analytics/VideoSessionState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/video/analytics/VideoSessionState;->$VALUES:[Lcom/oculus/video/analytics/VideoSessionState;

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

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 258
    iput-object p3, p0, Lcom/oculus/video/analytics/VideoSessionState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/analytics/VideoSessionState;
    .locals 1

    .line 246
    const-class v0, Lcom/oculus/video/analytics/VideoSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/analytics/VideoSessionState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/analytics/VideoSessionState;
    .locals 1

    .line 246
    sget-object v0, Lcom/oculus/video/analytics/VideoSessionState;->$VALUES:[Lcom/oculus/video/analytics/VideoSessionState;

    invoke-virtual {v0}, [Lcom/oculus/video/analytics/VideoSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/analytics/VideoSessionState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoSessionState;->value:Ljava/lang/String;

    return-object v0
.end method
