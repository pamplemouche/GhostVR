.class public abstract LIj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LJs;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastButtonFactory"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LIj;->a:LJs;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LIj;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LIj;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, LI4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, LI4;

    invoke-interface {p1}, LI4;->a()Lj7;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "getActionProvider: item does not implement SupportMenuItem; returning null"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 5
    :goto_0
    check-cast p1, Lo9;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, LJj;->b(Landroid/content/Context;)LJj;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, LJj;->a()Lbb;

    throw v1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
