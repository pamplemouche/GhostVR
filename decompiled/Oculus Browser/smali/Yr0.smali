.class public LYr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Las0;


# direct methods
.method public constructor <init>(Las0;Lbs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LYr0;->w:Las0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, LXr0;

    iget-object v0, p0, LYr0;->w:Las0;

    iget-object v0, v0, Las0;->B:Lbs0;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LXr0;-><init>(Lbs0;LUr0;)V

    .line 2
    iget-object v0, p0, LYr0;->w:Las0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LXr0;->run()V

    :cond_0
    return-void
.end method
