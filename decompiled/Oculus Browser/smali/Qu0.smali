.class public abstract LQu0;
.super LCQ0;
.source "PG"


# instance fields
.field public G:Z

.field public H:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, LCQ0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, LCQ0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(LX81;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;)V
.end method

.method public a(Ljava/lang/String;Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;)V
    .locals 3

    .line 2
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, LPu0;

    invoke-direct {v0, p0, p2}, LPu0;-><init>(LQu0;Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;)V

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/chromium/payments/mojom/PaymentMethodData;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, LQu0;->n()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract l()V
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract n()Ljava/util/Set;
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 0

    return-void
.end method
