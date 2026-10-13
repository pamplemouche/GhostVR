.class public Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBarDelegate;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBarDelegate;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBarDelegate;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBarDelegate;-><init>()V

    return-object v0
.end method

.method private openInstantApp(Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;)V
    .locals 2

    .line 1
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    throw v1
.end method
