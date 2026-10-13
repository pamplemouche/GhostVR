.class public Lorg/chromium/components/payments/PaymentManifestDownloader;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriString(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MCkwfWHm(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
