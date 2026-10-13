.class public LhU0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/payments/PaymentHandlerHost$PaymentHandlerHostDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, LJ/N;->MNMwlyDN(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    .line 3
    iput-wide p1, p0, LhU0;->a:J

    return-void
.end method
