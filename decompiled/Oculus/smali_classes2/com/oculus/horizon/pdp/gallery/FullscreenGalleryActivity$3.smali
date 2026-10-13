.class Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullscreenGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->setup(Landroid/content/Intent;)V
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
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$3;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$3;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$100(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method
