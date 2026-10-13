.class Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;
.super Ljava/lang/Object;
.source "SphericalZoomDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/spherical/touch/SphericalZoomDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;


# direct methods
.method private constructor <init>(Lcom/facebook/spherical/touch/SphericalZoomDetector;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/spherical/touch/SphericalZoomDetector;Lcom/facebook/spherical/touch/SphericalZoomDetector$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;-><init>(Lcom/facebook/spherical/touch/SphericalZoomDetector;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$102(Lcom/facebook/spherical/touch/SphericalZoomDetector;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 55
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-static {v0}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$200(Lcom/facebook/spherical/touch/SphericalZoomDetector;)Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;->onZoom(F)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$102(Lcom/facebook/spherical/touch/SphericalZoomDetector;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 49
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-static {v0}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$200(Lcom/facebook/spherical/touch/SphericalZoomDetector;)Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;->onZoomStarted()Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$102(Lcom/facebook/spherical/touch/SphericalZoomDetector;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 61
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;->this$0:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-static {v0}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->access$200(Lcom/facebook/spherical/touch/SphericalZoomDetector;)Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;->onZoomEnd()V

    .line 62
    return-void
.end method
