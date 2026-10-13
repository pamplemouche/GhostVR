.class public Lcom/oculus/browser/WebVRNavigationDescriptor;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final NAVIGATION_ABORTED:I = 0x5

.field public static final NAVIGATION_COMPLETE:I = 0x3

.field public static final NAVIGATION_REQUESTED:I = 0x1

.field public static final NAVIGATION_STARTED:I = 0x2

.field public static final NAVIGATION_STOPPED:I = 0x4


# instance fields
.field public mDeepLinking:Z

.field public mReturnToCaller:Z

.field public mStatus:I

.field public mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iput-object p2, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mDeepLinking:Z

    .line 11
    iput-boolean p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mReturnToCaller:Z

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mUrl:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mDeepLinking:Z

    .line 5
    iput-boolean p3, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mReturnToCaller:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return v0
.end method

.method public getTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDeepLinking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mDeepLinking:Z

    return v0
.end method

.method public isNavigating()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavigatingOrNavigated()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigatingTo(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNavigationCompleted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavigationDone()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReturnToCallerRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mReturnToCaller:Z

    return v0
.end method

.method public onAbortNavigation()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method

.method public onFinishNavigation()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method

.method public onRequestNavigation()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method

.method public onStartNavigation()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method

.method public onStopNavigation()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mStatus:I

    return-void
.end method

.method public resetDeepLinking()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oculus/browser/WebVRNavigationDescriptor;->mDeepLinking:Z

    return-void
.end method
