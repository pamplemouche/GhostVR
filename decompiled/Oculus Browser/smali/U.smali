.class public LU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lu7;


# instance fields
.field public final synthetic a:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU;->a:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LV7;)LV7;
    .locals 2

    .line 1
    iget-object p1, p0, LU;->a:Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, LA7;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 3
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/AppBarLayout;->B:LV7;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iput-object v0, p1, Landroid/support/design/widget/AppBarLayout;->B:LV7;

    .line 6
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->e()V

    :cond_1
    return-object p2

    .line 7
    :cond_2
    throw v0
.end method
