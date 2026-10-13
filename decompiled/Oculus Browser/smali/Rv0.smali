.class public final synthetic LRv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LVv0;


# direct methods
.method public constructor <init>(LVv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRv0;->w:LVv0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LRv0;->w:LVv0;

    .line 1
    iget-object v0, v0, LVv0;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
