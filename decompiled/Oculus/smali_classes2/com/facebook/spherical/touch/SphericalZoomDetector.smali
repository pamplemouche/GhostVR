.class public Lcom/facebook/spherical/touch/SphericalZoomDetector;
.super Ljava/lang/Object;
.source "SphericalZoomDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;,
        Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mZoomState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mZoomState:Ljava/lang/Integer;

    .line 38
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mListener:Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

    .line 40
    new-instance v0, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/spherical/touch/SphericalZoomDetector$ScaleGestureDetectorListener;-><init>(Lcom/facebook/spherical/touch/SphericalZoomDetector;Lcom/facebook/spherical/touch/SphericalZoomDetector$1;)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 41
    return-void
.end method

.method static synthetic access$102(Lcom/facebook/spherical/touch/SphericalZoomDetector;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mZoomState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/spherical/touch/SphericalZoomDetector;)Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mListener:Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mZoomState:Ljava/lang/Integer;

    .line 68
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalZoomDetector;->mZoomState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
