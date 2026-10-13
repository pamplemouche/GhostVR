.class public Lce;
.super LDd;
.source "PG"


# instance fields
.field public final synthetic m:Lee;


# direct methods
.method public constructor <init>(Lee;Landroid/content/Context;Lqd;Landroid/view/View;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Lce;->m:Lee;

    const/4 v6, 0x0

    const v5, 0x7f04001e

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 2
    invoke-direct/range {v0 .. v6}, LDd;-><init>(Landroid/content/Context;Lqd;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 3
    iput p2, p0, LDd;->g:I

    .line 4
    iget-object p1, p1, Lee;->U:Lde;

    invoke-virtual {p0, p1}, LDd;->a(LEd;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lce;->m:Lee;

    .line 2
    iget-object v0, v0, Lcd;->y:Lqd;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lqd;->a(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lce;->m:Lee;

    const/4 v1, 0x0

    iput-object v1, v0, Lee;->Q:Lce;

    .line 5
    invoke-super {p0}, LDd;->c()V

    return-void
.end method
