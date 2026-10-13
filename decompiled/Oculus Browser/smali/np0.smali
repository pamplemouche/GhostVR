.class public Lnp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsp0;


# direct methods
.method public constructor <init>(Lsp0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp0;->b:Lsp0;

    iput p2, p0, Lnp0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 1

    .line 1
    array-length p1, p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lnp0;->b:Lsp0;

    iget p2, p0, Lnp0;->a:I

    invoke-virtual {p1, p2}, Lsp0;->a(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lnp0;->b:Lsp0;

    .line 5
    iget-object p1, p1, Lsp0;->a:Lop0;

    .line 6
    invoke-interface {p1}, Lop0;->q()V

    :goto_0
    return-void
.end method
