.class Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;
.super Ljava/lang/Object;
.source "FullScreenVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewInVrClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;-><init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$900(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;->this$0:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v3}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$900(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    invoke-static {}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled deep-link"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
