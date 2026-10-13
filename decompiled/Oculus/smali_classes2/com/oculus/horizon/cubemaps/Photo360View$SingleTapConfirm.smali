.class Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Photo360View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHasFullScreenUFI:Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    iget-object v0, v0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHasFullScreenUFI:Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;->toggleUFIVisibility()V

    .line 553
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
