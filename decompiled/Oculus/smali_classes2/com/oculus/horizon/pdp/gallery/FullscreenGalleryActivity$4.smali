.class Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;
.super Ljava/lang/Object;
.source "FullscreenGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;Landroidx/core/view/GestureDetectorCompat;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;->val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;->val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
