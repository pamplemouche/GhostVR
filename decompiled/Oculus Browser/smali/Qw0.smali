.class public LQw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LXw0;


# direct methods
.method public constructor <init>(LXw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQw0;->w:LXw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LQw0;->w:LXw0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, LXw0;->l0:LMM0;

    .line 3
    iget-object v0, v0, LXw0;->w:LTw0;

    .line 4
    invoke-virtual {v0}, LTw0;->a()V

    return-void
.end method
