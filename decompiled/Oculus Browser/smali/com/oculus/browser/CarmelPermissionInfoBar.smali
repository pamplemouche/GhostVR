.class public Lcom/oculus/browser/CarmelPermissionInfoBar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhx0;


# static fields
.field public static final TAG:Ljava/lang/String; = "CarmelPermissionInfoBar"


# instance fields
.field public mNativeCarmelPermissionInfoBarPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/oculus/browser/CarmelPermissionInfoBar;->mNativeCarmelPermissionInfoBarPtr:J

    return-void
.end method

.method public static create(J)Lcom/oculus/browser/CarmelPermissionInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/CarmelPermissionInfoBar;

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/CarmelPermissionInfoBar;-><init>(J)V

    return-object v0
.end method

.method private native nativeOnAndroidPermissionAccepted(J)V
.end method

.method private native nativeOnAndroidPermissionCanceled(J)V
.end method


# virtual methods
.method public onAndroidPermissionAccepted()V
    .locals 2

    const-string v0, "CarmelPermissionInfoBar"

    const-string v1, "onAndroidPermissionAccepted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/CarmelPermissionInfoBar;->mNativeCarmelPermissionInfoBarPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/CarmelPermissionInfoBar;->nativeOnAndroidPermissionAccepted(J)V

    return-void
.end method

.method public onAndroidPermissionCanceled()V
    .locals 2

    const-string v0, "CarmelPermissionInfoBar"

    const-string v1, "onAndroidPermissionCanceled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/CarmelPermissionInfoBar;->mNativeCarmelPermissionInfoBarPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/CarmelPermissionInfoBar;->nativeOnAndroidPermissionCanceled(J)V

    return-void
.end method

.method public requestAndroidPermissions(Lorg/chromium/chrome/browser/tab/Tab;[I)V
    .locals 2

    const-string v0, "CarmelPermissionInfoBar"

    const-string v1, "requestAndroidPermissions"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 3
    invoke-static {p1, p2, p0}, Lix0;->a(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/CarmelPermissionInfoBar;->onAndroidPermissionAccepted()V

    :cond_0
    return-void
.end method
