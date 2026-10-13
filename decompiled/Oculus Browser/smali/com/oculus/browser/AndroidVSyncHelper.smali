.class public Lcom/oculus/browser/AndroidVSyncHelper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final mNativeAndroidVSyncHelper:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/oculus/browser/AndroidVSyncHelper;->mNativeAndroidVSyncHelper:J

    return-void
.end method

.method public static create(J)Lcom/oculus/browser/AndroidVSyncHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/AndroidVSyncHelper;

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/AndroidVSyncHelper;-><init>(J)V

    return-object v0
.end method

.method private getRefreshRate()F
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "window"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method
