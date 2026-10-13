.class public final synthetic LOg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LCg0;


# direct methods
.method public constructor <init>(LCg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOg0;->w:LCg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOg0;->w:LCg0;

    .line 1
    invoke-interface {v0}, LCg0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, LCg0;->t()V

    :goto_0
    return-void
.end method
