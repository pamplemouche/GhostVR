.class final enum Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;
.super Ljava/lang/Enum;
.source "VideoPlayerAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VideoSessionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum COMPLETE_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum PAUSE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum RENDER_RESTART:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum RESUME:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum SEEK_START:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum STALL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum START_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

.field public static final enum VIDEO_SIZE_CHANGED:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 214
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v1, 0x0

    const-string v2, "START_SESSION"

    const-string v3, "start_session"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->START_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 215
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v2, 0x1

    const-string v3, "VIDEO_SIZE_CHANGED"

    const-string v4, "video_size_changed"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->VIDEO_SIZE_CHANGED:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 216
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v3, 0x2

    const-string v4, "RENDER_RESTART"

    const-string v5, "render_restart"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RENDER_RESTART:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 217
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v4, 0x3

    const-string v5, "SEEK_START"

    const-string v6, "seek_start"

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->SEEK_START:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 218
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v5, 0x4

    const-string v6, "PAUSE"

    const-string v7, "pause"

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->PAUSE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 219
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v6, 0x5

    const-string v7, "RESUME"

    const-string v8, "resume"

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RESUME:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 220
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v7, 0x6

    const-string v8, "STALL"

    const-string v9, "stall"

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->STALL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    .line 221
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/4 v8, 0x7

    const-string v9, "COMPLETE_SESSION"

    const-string v10, "complete_session"

    invoke-direct {v0, v9, v8, v10}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->COMPLETE_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    const/16 v0, 0x8

    .line 213
    new-array v0, v0, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    sget-object v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->START_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->VIDEO_SIZE_CHANGED:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RENDER_RESTART:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->SEEK_START:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->PAUSE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RESUME:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->STALL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->COMPLETE_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->$VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

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

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    iput-object p3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;
    .locals 1

    .line 213
    const-class v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;
    .locals 1

    .line 213
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->$VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-virtual {v0}, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->value:Ljava/lang/String;

    return-object v0
.end method
