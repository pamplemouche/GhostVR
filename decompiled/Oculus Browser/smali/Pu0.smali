.class public LPu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;


# direct methods
.method public constructor <init>(LQu0;Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, LPu0;->w:Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LPu0;->w:Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;->a(Z)V

    return-void
.end method
