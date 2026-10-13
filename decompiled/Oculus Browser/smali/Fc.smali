.class public LFc;
.super Lfh;
.source "PG"


# instance fields
.field public final e:Landroid/support/v7/widget/RecyclerView;

.field public final f:Lh7;

.field public final g:Lh7;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Lfh;->d:Lh7;

    .line 3
    iput-object v0, p0, LFc;->f:Lh7;

    .line 4
    new-instance v0, LEc;

    invoke-direct {v0, p0}, LEc;-><init>(LFc;)V

    iput-object v0, p0, LFc;->g:Lh7;

    .line 5
    iput-object p1, p0, LFc;->e:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()Lh7;
    .locals 1

    .line 1
    iget-object v0, p0, LFc;->g:Lh7;

    return-object v0
.end method
