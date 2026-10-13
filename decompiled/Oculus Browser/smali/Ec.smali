.class public LEc;
.super Lh7;
.source "PG"


# instance fields
.field public final synthetic c:LFc;


# direct methods
.method public constructor <init>(LFc;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEc;->c:LFc;

    invoke-direct {p0}, Lh7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LZ7;)V
    .locals 2

    .line 1
    iget-object v0, p0, LEc;->c:LFc;

    iget-object v0, v0, LFc;->f:Lh7;

    invoke-virtual {v0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 2
    iget-object v0, p0, LEc;->c:LFc;

    iget-object v0, v0, LFc;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p1

    .line 3
    iget-object v0, p0, LEc;->c:LFc;

    iget-object v0, v0, LFc;->e:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 5
    instance-of v1, v0, Lyc;

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    check-cast v0, Lyc;

    .line 7
    invoke-virtual {v0, p1}, Lyc;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(LZ7;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 9
    iget-object v0, p0, LEc;->c:LFc;

    iget-object v0, v0, LFc;->f:Lh7;

    invoke-virtual {v0, p1, p2, p3}, Lh7;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
