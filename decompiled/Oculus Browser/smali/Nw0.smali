.class public LNw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:LXw0;


# direct methods
.method public constructor <init>(LXw0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNw0;->x:LXw0;

    iput-object p2, p0, LNw0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LNw0;->x:LXw0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, LXw0;->b(Z)V

    .line 3
    iget-object v0, p0, LNw0;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
