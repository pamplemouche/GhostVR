.class Lcom/oculus/horizon/media/MediaPlayerHelper$3;
.super Ljava/lang/Object;
.source "MediaPlayerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/media/MediaPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/media/MediaPlayerHelper;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$3;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer error: what=[%d] extra=[%d], state=[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oculus/horizon/media/MediaPlayerHelper$3;->this$0:Lcom/oculus/horizon/media/MediaPlayerHelper;

    .line 83
    invoke-static {v4}, Lcom/oculus/horizon/media/MediaPlayerHelper;->access$200(Lcom/oculus/horizon/media/MediaPlayerHelper;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return v5
.end method
