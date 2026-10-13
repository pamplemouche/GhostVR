.class public Lcom/facebook/react/views/art/ARTSurfaceView;
.super Landroid/view/TextureView;
.source "ARTSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/art/ARTSurfaceView;->setOpaque(Z)V

    .line 17
    return-void
.end method
