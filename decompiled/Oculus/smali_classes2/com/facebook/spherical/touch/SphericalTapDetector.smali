.class public Lcom/facebook/spherical/touch/SphericalTapDetector;
.super Ljava/lang/Object;
.source "SphericalTapDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mListener:Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;

.field private final mTapListenerWrapper:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/facebook/spherical/touch/SphericalTapDetector$1;

    invoke-direct {v0, p0}, Lcom/facebook/spherical/touch/SphericalTapDetector$1;-><init>(Lcom/facebook/spherical/touch/SphericalTapDetector;)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mTapListenerWrapper:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 30
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mListener:Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/spherical/touch/SphericalTapDetector;)Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mListener:Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mTapListenerWrapper:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalTapDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
