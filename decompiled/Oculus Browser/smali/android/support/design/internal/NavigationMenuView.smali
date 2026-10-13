.class public Landroid/support/design/internal/NavigationMenuView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"

# interfaces
.implements LHd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    return-void
.end method


# virtual methods
.method public a(Lqd;)V
    .locals 0

    return-void
.end method
