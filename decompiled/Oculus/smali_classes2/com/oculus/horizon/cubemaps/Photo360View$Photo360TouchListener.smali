.class Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;
.super Ljava/lang/Object;
.source "Photo360View.java"

# interfaces
.implements Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Photo360TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->onDrag(FF)V

    .line 504
    return-void
.end method

.method public onDragEndWithFling(FF)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->onDragEnd(FF)V

    .line 509
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$800(Lcom/oculus/horizon/cubemaps/Photo360View;)Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;->logDragStart()V

    .line 498
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->onDragStart()V

    .line 499
    return-void
.end method

.method public onTap(FF)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public onZoom(F)Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->onPinchZoom(F)V

    .line 520
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-virtual {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->updateDebugConsole()V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public onZoomEnd()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->onPinchZoomEnd()V

    .line 527
    return-void
.end method

.method public onZoomStarted()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$800(Lcom/oculus/horizon/cubemaps/Photo360View;)Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;->logZoomStart()V

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public useJoystick()Z
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method
