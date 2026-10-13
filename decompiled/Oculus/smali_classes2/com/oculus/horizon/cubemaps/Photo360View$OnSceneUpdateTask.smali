.class Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;
.super Landroid/os/AsyncTask;
.source "Photo360View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSceneUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 580
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$900(Lcom/oculus/horizon/cubemaps/Photo360View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/OnSceneUpdateListener;

    .line 591
    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    .line 592
    invoke-virtual {v2}, Lcom/oculus/horizon/cubemaps/Photo360View;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->getPitch()F

    move-result v2

    iget-object v3, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    .line 593
    invoke-virtual {v3}, Lcom/oculus/horizon/cubemaps/Photo360View;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->getYaw()F

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    .line 594
    invoke-virtual {v4}, Lcom/oculus/horizon/cubemaps/Photo360View;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->getRoll()F

    move-result v4

    iget-object v5, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    .line 595
    invoke-virtual {v5}, Lcom/oculus/horizon/cubemaps/Photo360View;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->getFov()F

    move-result v5

    .line 591
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/oculus/horizon/spherical/OnSceneUpdateListener;->onSceneUpdate(FFFF)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$600(Lcom/oculus/horizon/cubemaps/Photo360View;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v1}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$500(Lcom/oculus/horizon/cubemaps/Photo360View;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    return-void
.end method
