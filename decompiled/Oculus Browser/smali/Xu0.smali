.class public final LXu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements La91;


# instance fields
.field public w:Lc91;


# direct methods
.method public synthetic constructor <init>(LWu0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(LH91;)V
    .locals 0

    return-void
.end method

.method public a(LU81;)V
    .locals 0

    return-void
.end method

.method public a(Lc91;[Lorg/chromium/payments/mojom/PaymentMethodData;LU81;LY81;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LXu0;->w:Lc91;

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 2
    iget-object p1, p0, LXu0;->w:Lc91;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    check-cast p1, Lp91;

    const-string v0, "Web Payments API is disabled."

    invoke-virtual {p1, p2, v0}, Lp91;->a(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, LXu0;->w:Lc91;

    check-cast p1, Lz61;

    invoke-virtual {p1}, Lz61;->close()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, LXu0;->w:Lc91;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    check-cast p1, Lp91;

    invoke-virtual {p1, v0}, Lp91;->c(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, LXu0;->w:Lc91;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    check-cast v0, Lp91;

    invoke-virtual {v0, v1}, Lp91;->b(I)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
