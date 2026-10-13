.class public LE00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LA00;


# static fields
.field public static f:LD00;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO00;

.field public final c:LF00;

.field public d:LK00;

.field public e:LI00;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LB00;->a:LD00;

    sput-object v0, LE00;->f:LD00;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqi0;LO00;LF00;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LE00;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, LE00;->b:LO00;

    .line 4
    iput-object p4, p0, LE00;->c:LF00;

    .line 5
    invoke-interface {p4}, LF00;->i()LK00;

    move-result-object p1

    iput-object p1, p0, LE00;->d:LK00;

    .line 6
    sget-object p3, LE00;->f:LD00;

    iget-object p4, p0, LE00;->c:LF00;

    .line 7
    move-object v0, p1

    check-cast v0, LN00;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0005

    .line 8
    check-cast p3, LB00;

    if-eqz p3, :cond_0

    .line 9
    invoke-static {p1, p4, v0, p5, p2}, LE00;->a(LK00;LF00;ILandroid/view/View;Lqi0;)LI00;

    move-result-object p1

    .line 10
    iput-object p1, p0, LE00;->e:LI00;

    .line 11
    new-instance p2, LC00;

    invoke-direct {p2, p0}, LC00;-><init>(LE00;)V

    .line 12
    iget-object p1, p1, LI00;->A:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_0
    throw v1

    .line 14
    :cond_1
    throw v1
.end method

.method public static final synthetic a(LK00;LF00;ILandroid/view/View;Lqi0;)LI00;
    .locals 7

    .line 1
    new-instance v6, LI00;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LI00;-><init>(LK00;LF00;ILandroid/view/View;Lqi0;)V

    return-object v6
.end method
