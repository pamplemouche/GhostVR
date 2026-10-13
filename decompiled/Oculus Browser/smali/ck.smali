.class public final Lck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LUj;


# instance fields
.field public final synthetic a:Lek;


# direct methods
.method public synthetic constructor <init>(Lek;LMk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lck;->a:Lek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(LSj;)V
    .locals 0

    return-void
.end method

.method public final synthetic a(LSj;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lck;->a:Lek;

    invoke-virtual {p1}, Lek;->c()V

    return-void
.end method

.method public final synthetic a(LSj;Ljava/lang/String;)V
    .locals 0

    .line 5
    check-cast p1, LOj;

    .line 6
    iget-object p2, p0, Lck;->a:Lek;

    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p1

    invoke-virtual {p2, p1}, Lek;->a(Lok;)V

    return-void
.end method

.method public final synthetic a(LSj;Z)V
    .locals 0

    .line 2
    check-cast p1, LOj;

    .line 3
    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lck;->a:Lek;

    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p1

    invoke-virtual {p2, p1}, Lek;->a(Lok;)V

    :cond_0
    return-void
.end method

.method public final synthetic b(LSj;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lck;->a:Lek;

    invoke-virtual {p1}, Lek;->c()V

    .line 2
    iget-object p1, p0, Lck;->a:Lek;

    invoke-virtual {p1}, Lek;->a()V

    return-void
.end method

.method public final bridge synthetic b(LSj;I)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(LSj;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic c(LSj;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lck;->a:Lek;

    invoke-virtual {p1}, Lek;->c()V

    .line 2
    iget-object p1, p0, Lck;->a:Lek;

    invoke-virtual {p1}, Lek;->a()V

    return-void
.end method

.method public final bridge synthetic d(LSj;I)V
    .locals 0

    return-void
.end method
