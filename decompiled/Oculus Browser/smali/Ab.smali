.class public LAb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LBb;


# direct methods
.method public constructor <init>(LBb;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAb;->w:LBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LAb;->w:LBb;

    iget-object v1, v0, LBb;->E:LFb;

    .line 2
    iget-object v2, v1, LFb;->n:LBb;

    if-ne v2, v0, :cond_0

    .line 3
    invoke-virtual {v1}, LFb;->b()V

    :cond_0
    return-void
.end method
