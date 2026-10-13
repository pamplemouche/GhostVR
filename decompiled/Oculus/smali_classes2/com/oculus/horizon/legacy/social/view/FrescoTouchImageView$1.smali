.class Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "FrescoTouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber",
        "<",
        "Lcom/facebook/common/references/CloseableReference",
        "<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    const-string v1, "bitmap loading failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->access$000(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    .line 37
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->access$102(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->access$200(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->access$300(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    .line 41
    :cond_0
    return-void
.end method
