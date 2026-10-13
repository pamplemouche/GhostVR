.class Lcom/facebook/spherical/touch/SphericalTapDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SphericalTapDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/spherical/touch/SphericalTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/spherical/touch/SphericalTapDetector;


# direct methods
.method constructor <init>(Lcom/facebook/spherical/touch/SphericalTapDetector;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalTapDetector$1;->this$0:Lcom/facebook/spherical/touch/SphericalTapDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector$1;->this$0:Lcom/facebook/spherical/touch/SphericalTapDetector;

    invoke-static {v0}, Lcom/facebook/spherical/touch/SphericalTapDetector;->access$000(Lcom/facebook/spherical/touch/SphericalTapDetector;)Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;->onTap(FF)V

    .line 21
    const/4 v0, 0x1

    return v0
.end method
