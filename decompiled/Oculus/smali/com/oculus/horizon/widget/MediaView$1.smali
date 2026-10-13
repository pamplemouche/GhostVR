.class Lcom/oculus/horizon/widget/MediaView$1;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/MediaView;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/MediaView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v0}, Lcom/oculus/horizon/widget/MediaView;->access$000(Lcom/oculus/horizon/widget/MediaView;)Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v0}, Lcom/oculus/horizon/widget/MediaView;->access$100(Lcom/oculus/horizon/widget/MediaView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v0}, Lcom/oculus/horizon/widget/MediaView;->access$200(Lcom/oculus/horizon/widget/MediaView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v0}, Lcom/oculus/horizon/widget/MediaView;->access$300(Lcom/oculus/horizon/widget/MediaView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView$1;->this$0:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v0}, Lcom/oculus/horizon/widget/MediaView;->access$400(Lcom/oculus/horizon/widget/MediaView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
