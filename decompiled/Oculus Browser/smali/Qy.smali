.class public final synthetic LQy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSy;

.field public final x:LRy;

.field public final y:Ljava/lang/Boolean;

.field public final z:LJx;


# direct methods
.method public constructor <init>(LSy;LRy;Ljava/lang/Boolean;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQy;->w:LSy;

    iput-object p2, p0, LQy;->x:LRy;

    iput-object p3, p0, LQy;->y:Ljava/lang/Boolean;

    iput-object p4, p0, LQy;->z:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LQy;->w:LSy;

    iget-object v1, p0, LQy;->x:LRy;

    iget-object v2, p0, LQy;->y:Ljava/lang/Boolean;

    iget-object v3, p0, LQy;->z:LJx;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2
    iput-boolean v2, v1, LRy;->h:Z

    .line 3
    invoke-virtual {v0, v1, v3}, LSy;->b(LRy;LJx;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
