.class public Le60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lj60;


# direct methods
.method public constructor <init>(Lj60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le60;->w:Lj60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le60;->w:Lj60;

    .line 2
    iget-object v0, v0, Lj60;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh60;

    .line 3
    invoke-interface {v1}, Lh60;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
