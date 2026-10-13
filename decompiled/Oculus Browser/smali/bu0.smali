.class public final synthetic Lbu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Leu0;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leu0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu0;->w:Leu0;

    iput-object p2, p0, Lbu0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbu0;->w:Leu0;

    iget-object v1, p0, Lbu0;->x:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    return-void
.end method
