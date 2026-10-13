.class public LKd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic w:LMd;


# direct methods
.method public constructor <init>(LMd;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKd;->w:LMd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, LKd;->w:LMd;

    invoke-virtual {v0}, LMd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LKd;->w:LMd;

    iget-object v1, v0, LMd;->E:Lpg;

    .line 2
    iget-boolean v1, v1, Lmg;->W:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v0, v0, LMd;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, LKd;->w:LMd;

    iget-object v0, v0, LMd;->E:Lpg;

    invoke-virtual {v0}, Lmg;->a()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, LKd;->w:LMd;

    invoke-virtual {v0}, LMd;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
