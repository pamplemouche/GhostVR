.class Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->toggleOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$200(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 156
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$200(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$300(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)Lcom/oculus/horizon/widget/ViewPagerIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$402(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 163
    return-void
.end method
