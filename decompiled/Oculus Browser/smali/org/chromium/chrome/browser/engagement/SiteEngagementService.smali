.class public Lorg/chromium/chrome/browser/engagement/SiteEngagementService;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/engagement/SiteEngagementService;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/engagement/SiteEngagementService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/engagement/SiteEngagementService;-><init>(J)V

    return-object v0
.end method

.method private onNativeDestroyed()V
    .locals 0

    return-void
.end method
