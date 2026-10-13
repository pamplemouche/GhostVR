.class public Lcom/oculus/vrappframework/VrApp;
.super Ljava/lang/Object;
.source "VrApp.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "VrApp"


# instance fields
.field private mAppPtr:J

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p2, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    .line 42
    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private static native nativeOnCreate(Landroid/app/Activity;)V
.end method

.method private static native nativeOnDestroy(J)V
.end method

.method private static native nativeOnPause(J)V
.end method

.method private static native nativeOnResume(J)V
.end method

.method private static native nativeSurfaceChanged(JLandroid/view/Surface;)V
.end method

.method private static native nativeSurfaceCreated(JLandroid/view/Surface;)V
.end method

.method private static native nativeSurfaceDestroyed(J)V
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/oculus/vrappframework/VrApp;->nativeOnCreate(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method getAppPtr()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    return-wide v0
.end method

.method public onDestroy()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/oculus/vrappframework/VrApp;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-static {v0, v1}, Lcom/oculus/vrappframework/VrApp;->nativeSurfaceDestroyed(J)V

    .line 68
    :cond_0
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-static {v0, v1}, Lcom/oculus/vrappframework/VrApp;->nativeOnDestroy(J)V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-static {v0, v1}, Lcom/oculus/vrappframework/VrApp;->nativeOnPause(J)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-static {v0, v1}, Lcom/oculus/vrappframework/VrApp;->nativeOnResume(J)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string v0, "VrApp"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceChanged() format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " width: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-wide p2, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    .line 85
    iget-wide p2, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/oculus/vrappframework/VrApp;->nativeSurfaceChanged(JLandroid/view/Surface;)V

    .line 86
    iput-object p1, p0, Lcom/oculus/vrappframework/VrApp;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "VrApp"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/vrappframework/VrApp;->nativeSurfaceCreated(JLandroid/view/Surface;)V

    .line 77
    iput-object p1, p0, Lcom/oculus/vrappframework/VrApp;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string p1, "VrApp"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDestroyed()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 94
    iget-wide v0, p0, Lcom/oculus/vrappframework/VrApp;->mAppPtr:J

    invoke-static {v0, v1}, Lcom/oculus/vrappframework/VrApp;->nativeSurfaceDestroyed(J)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/oculus/vrappframework/VrApp;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method
