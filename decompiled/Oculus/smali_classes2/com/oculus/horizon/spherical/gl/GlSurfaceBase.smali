.class public abstract Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;
.super Ljava/lang/Object;
.source "GlSurfaceBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field protected mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

.field protected mEGLSurface:Landroid/opengl/EGLSurface;

.field private mOwnEGLCore:Z


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/spherical/gl/EGLCore;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 20
    iput-object p1, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    .line 21
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mOwnEGLCore:Z

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;->setup()V

    .line 26
    :cond_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public makeCurrent()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    .line 31
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;->getEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v3}, Lcom/oculus/horizon/spherical/gl/EGLCore;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 30
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;->getEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 47
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 48
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mOwnEGLCore:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;->release()V

    .line 51
    :cond_1
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLCore:Lcom/oculus/horizon/spherical/gl/EGLCore;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/EGLCore;->getEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/GlSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 40
    return-void
.end method
