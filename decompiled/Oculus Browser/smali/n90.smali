.class public final synthetic Ln90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln90;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ln90;->a:Ljava/lang/String;

    check-cast p1, Ljava/util/ArrayList;

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN70;

    .line 2
    iget v2, v1, LN70;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, LN70;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lo90;

    invoke-direct {p1, v0}, Lo90;-><init>(Ljava/lang/String;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :cond_1
    return-void
.end method
