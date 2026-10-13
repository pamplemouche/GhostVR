.class public Lcom/oculus/browser/PanelSurface;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelSurface"


# instance fields
.field public mNativePanelSuface:J

.field public mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/PanelSurface;->mSurface:Landroid/view/Surface;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/oculus/browser/PanelSurface;->nativeInit(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/browser/PanelSurface;->mNativePanelSuface:J

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "PanelSurface"

    const-string p3, "ctor"

    .line 4
    invoke-static {p2, p3, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/PanelSurface;->mNativePanelSuface:J

    return-wide v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)J
.end method

.method private native nativeSetSurface(JLandroid/view/Surface;)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/PanelSurface;->mNativePanelSuface:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/PanelSurface;->nativeDestroy(J)V

    return-void
.end method

.method public onBackground()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelSurface"

    const-string v2, "onBackground"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/PanelSurface;->mNativePanelSuface:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/browser/PanelSurface;->nativeSetSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method public onForeground()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelSurface"

    const-string v2, "onForeground"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/PanelSurface;->mNativePanelSuface:J

    iget-object v2, p0, Lcom/oculus/browser/PanelSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/browser/PanelSurface;->nativeSetSurface(JLandroid/view/Surface;)V

    return-void
.end method
