.class public Lcom/oculus/horizon/spherical/gl/GlOutputSurface;
.super Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;
.source "GlOutputSurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;-><init>(Lcom/oculus/horizon/spherical/gl/EGLCore;)V

    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/gl/EGLCore;->createWindowSurface(Landroid/graphics/SurfaceTexture;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 18
    return-void
.end method
