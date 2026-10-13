.class public LMu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

.field public final synthetic x:Ljava/util/Set;

.field public final synthetic y:LNu0;


# direct methods
.method public constructor <init>(LOu0;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;Ljava/util/Set;LNu0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LMu0;->w:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    iput-object p3, p0, LMu0;->x:Ljava/util/Set;

    iput-object p4, p0, LMu0;->y:LNu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LLu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LMu0;->w:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(LLu0;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, LMu0;->w:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LMu0;->x:Ljava/util/Set;

    iget-object v1, p0, LMu0;->y:LNu0;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, LMu0;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMu0;->w:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->e()V

    :cond_0
    return-void
.end method
