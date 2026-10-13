.class public LI50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LV01;


# instance fields
.field public final a:LV01;

.field public final b:LV01;


# direct methods
.method public synthetic constructor <init>(LV01;LV01;LH50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LI50;->a:LV01;

    .line 3
    iput-object p2, p0, LI50;->b:LV01;

    return-void
.end method


# virtual methods
.method public a()LW01;
    .locals 1

    .line 8
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0}, LV01;->a()LW01;

    move-result-object v0

    return-object v0
.end method

.method public a(IFF)V
    .locals 1

    .line 3
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0, p1, p2, p3}, LV01;->a(IFF)V

    .line 4
    iget-object v0, p0, LI50;->b:LV01;

    invoke-interface {v0, p1, p2, p3}, LV01;->a(IFF)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0, p1}, LV01;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LI50;->b:LV01;

    invoke-interface {v0, p1}, LV01;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZII)V
    .locals 1

    .line 5
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0, p1, p2, p3}, LV01;->a(ZII)V

    .line 6
    iget-object v0, p0, LI50;->b:LV01;

    invoke-interface {v0, p1, p2, p3}, LV01;->a(ZII)V

    return-void
.end method

.method public a(Z)Z
    .locals 1

    .line 7
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0, p1}, LV01;->a(Z)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LI50;->a:LV01;

    invoke-interface {v0}, LV01;->b()V

    .line 2
    iget-object v0, p0, LI50;->b:LV01;

    invoke-interface {v0}, LV01;->b()V

    return-void
.end method
