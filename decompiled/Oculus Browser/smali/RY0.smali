.class public LRY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LSY0;


# direct methods
.method public constructor <init>(LSY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRY0;->w:LSY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LRY0;->w:LSY0;

    iget-object v1, v0, LSY0;->x:LWY0;

    iget-object v0, v0, LSY0;->w:Landroid/view/View;

    .line 2
    iget-object v2, v1, LWY0;->e:LUY0;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v5, LTY0;

    invoke-direct {v5, v1, v0, v2, v3}, LTY0;-><init>(LWY0;Landroid/view/View;LUY0;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
