.class public Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lr10;


# instance fields
.field public final a:J

.field public final b:Ls10;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;->a:J

    .line 3
    new-instance p1, Ls10;

    invoke-direct {p1, p3, p0}, Ls10;-><init>(Lorg/chromium/content_public/browser/WebContents;Lr10;)V

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;->b:Ls10;

    return-void
.end method

.method private canScan()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;->b:Ls10;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public static create(JLorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method private scan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;->b:Ls10;

    .line 2
    iget-object v0, v0, Ls10;->a:Lr10;

    invoke-interface {v0}, Lr10;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScannerBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MzlSwhwH(JLjava/lang/Object;)V

    return-void
.end method
