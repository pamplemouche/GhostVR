.class public LSt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LUt0;


# direct methods
.method public constructor <init>(LUt0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSt0;->a:LUt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-object v0, p0, LSt0;->a:LUt0;

    .line 3
    iget-object v0, v0, LUt0;->s:LYQ0;

    .line 4
    iget-object v0, v0, LYQ0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, LSt0;->a:LUt0;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, v0, LDQ0;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LUt0;->t:Landroid/app/ProgressDialog;

    .line 7
    iget-object v2, v0, LDQ0;->b:Landroid/content/Context;

    const v3, 0x7f1304ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, v0, LUt0;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 9
    iget-object v0, p0, LSt0;->a:LUt0;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 10
    iput-object v1, v0, LUt0;->p:Ljava/lang/String;

    .line 11
    iget-object v2, v0, LUt0;->f:Lu10;

    .line 12
    iput-object v1, v2, Lu10;->x:Ljava/lang/String;

    .line 13
    iget-object v2, v0, LUt0;->g:LTt0;

    .line 14
    iput-object v1, v2, LTt0;->a:Ljava/lang/String;

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 16
    iput-object p1, v0, LUt0;->q:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {v0, v1}, LUt0;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
