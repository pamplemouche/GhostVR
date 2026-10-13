.class public Lcom/oculus/browser/PanelWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelWindowAndroid"


# instance fields
.field public mPermissionCallback:LKc1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcd1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;Lcd1;)V

    .line 2
    new-instance p2, Lcom/oculus/browser/PanelWindowAndroid$1;

    invoke-direct {p2, p0, p1}, Lcom/oculus/browser/PanelWindowAndroid$1;-><init>(Lcom/oculus/browser/PanelWindowAndroid;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lorg/chromium/ui/base/WindowAndroid;->setAndroidPermissionDelegate(LEc1;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/PanelWindowAndroid;)LKc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelWindowAndroid;->mPermissionCallback:LKc1;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/oculus/browser/PanelWindowAndroid;LKc1;)LKc1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelWindowAndroid;->mPermissionCallback:LKc1;

    return-object p1
.end method


# virtual methods
.method public onAppHidden()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStopped()V

    return-void
.end method

.method public onAppShown()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStarted()V

    return-void
.end method

.method public onRequestPermissionResponse([Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "PanelWindowAndroid"

    const-string v1, "onRequestPermissionResponse"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelWindowAndroid;->mPermissionCallback:LKc1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, LKc1;->a([Ljava/lang/String;[I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/PanelWindowAndroid;->mPermissionCallback:LKc1;

    :cond_0
    return-void
.end method
