.class public final synthetic LId0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LKd0;


# direct methods
.method public constructor <init>(LKd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LId0;->w:LKd0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LId0;->w:LKd0;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, LKd0;->l:Ljava/lang/Runnable;

    .line 2
    iget-object v1, v0, LKd0;->i:Lde0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, LKd0;->b:Landroid/view/ViewGroup;

    iget-object v0, v0, LKd0;->i:Lde0;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
