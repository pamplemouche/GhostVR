.class public final synthetic LQU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSU;


# direct methods
.method public constructor <init>(LSU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQU;->w:LSU;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LQU;->w:LSU;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, LSU;->d:Z

    .line 2
    iget-object v1, v0, LSU;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget v2, v0, LSU;->b:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 3
    iget-object v1, v0, LSU;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, LSU;->c:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0, v1}, LSU;->b(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, v0, LSU;->e:Z

    if-eqz v1, :cond_1

    iget v1, v0, LSU;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, v0, LSU;->f:LrU;

    invoke-interface {v1}, LrU;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, LSU;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
