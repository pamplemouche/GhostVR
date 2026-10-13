.class public Lcom/oculus/horizon/spherical/gl/EGLCore;
.super Ljava/lang/Object;
.source "EGLCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field protected mEGLConfig:Landroid/opengl/EGLConfig;

.field protected mEGLContext:Landroid/opengl/EGLContext;

.field protected mEGLDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 22
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 28
    return-void
.end method


# virtual methods
.method protected createWindowSurface(Landroid/graphics/SurfaceTexture;)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 98
    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 99
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 100
    const-string v1, "eglCreateWindowSurface"

    invoke-static {v1}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method public getEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getEGLDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 44
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 49
    return-void
.end method

.method public setup()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 53
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 57
    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    .line 63
    :cond_1
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 71
    new-array v3, v4, [Landroid/opengl/EGLConfig;

    .line 72
    new-array v6, v4, [I

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 90
    iget-object v1, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 91
    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 92
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkEglError(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/EGLCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 89
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
