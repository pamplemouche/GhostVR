.class public Lorg/chromium/chrome/browser/net/nqe/NetworkQualityProvider;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Ljava/lang/Integer;


# virtual methods
.method public onEffectiveConnectionTypeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/net/nqe/NetworkQualityProvider;->d:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onRTTOrThroughputEstimatesComputed(JJI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/net/nqe/NetworkQualityProvider;->a:J

    .line 2
    iput-wide p3, p0, Lorg/chromium/chrome/browser/net/nqe/NetworkQualityProvider;->b:J

    .line 3
    iput p5, p0, Lorg/chromium/chrome/browser/net/nqe/NetworkQualityProvider;->c:I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method
