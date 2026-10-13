.class public final Lx7;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lu7;


# direct methods
.method public constructor <init>(Lu7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx7;->a:Lu7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, LV7;->a(Ljava/lang/Object;)LV7;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lx7;->a:Lu7;

    invoke-interface {v0, p1, p2}, Lu7;->a(Landroid/view/View;LV7;)LV7;

    move-result-object p1

    .line 3
    invoke-static {p1}, LV7;->a(LV7;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
