.class public LQh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQh;->w:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LQh;->w:Landroid/support/v7/widget/Toolbar;

    .line 2
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LRh;->x:Ltd;

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ltd;->collapseActionView()Z

    :cond_1
    return-void
.end method
