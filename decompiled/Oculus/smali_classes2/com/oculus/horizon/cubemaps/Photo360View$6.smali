.class Lcom/oculus/horizon/cubemaps/Photo360View$6;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "Photo360View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;->startHighResBitmapRequest()V
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
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$6;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 0
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
    .line 312
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
    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$6;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eq v0, p1, :cond_1

    .line 295
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v1

    .line 299
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 300
    if-eqz v0, :cond_0

    .line 302
    if-eqz v1, :cond_2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$6;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v1, v1, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->updateFullScreenTexture(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v1
.end method
