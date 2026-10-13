.class public LV8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lu7;


# instance fields
.field public final synthetic a:Lk9;


# direct methods
.method public constructor <init>(Lk9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV8;->a:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LV7;)LV7;
    .locals 5

    .line 1
    invoke-virtual {p2}, LV7;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, LV8;->a:Lk9;

    invoke-virtual {v1, v0}, Lk9;->f(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, LV7;->b()I

    move-result v0

    .line 4
    invoke-virtual {p2}, LV7;->c()I

    move-result v2

    .line 5
    invoke-virtual {p2}, LV7;->a()I

    move-result v3

    .line 6
    new-instance v4, LV7;

    iget-object p2, p2, LV7;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-direct {v4, p2}, LV7;-><init>(Ljava/lang/Object;)V

    move-object p2, v4

    .line 8
    :cond_0
    invoke-static {p1, p2}, LA7;->a(Landroid/view/View;LV7;)LV7;

    move-result-object p1

    return-object p1
.end method
