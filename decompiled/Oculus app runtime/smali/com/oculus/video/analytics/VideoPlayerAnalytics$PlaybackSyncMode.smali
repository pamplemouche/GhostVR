.class final enum Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;
.super Ljava/lang/Enum;
.source "VideoPlayerAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlaybackSyncMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

.field public static final enum EXTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

.field public static final enum INTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

.field public static final enum NONE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 208
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->NONE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    .line 209
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    const/4 v2, 0x1

    const-string v3, "INTERNAL"

    invoke-direct {v0, v3, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->INTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    .line 210
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    const/4 v3, 0x2

    const-string v4, "EXTERNAL"

    invoke-direct {v0, v4, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->EXTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    const/4 v0, 0x3

    .line 207
    new-array v0, v0, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    sget-object v4, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->NONE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->INTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->EXTERNAL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->$VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;
    .locals 1

    .line 207
    const-class v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;
    .locals 1

    .line 207
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->$VALUES:[Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    invoke-virtual {v0}, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    return-object v0
.end method
