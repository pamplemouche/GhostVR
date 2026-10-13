.class public final synthetic LOb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LRb0;


# direct methods
.method public constructor <init>(LRb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOb0;->a:LRb0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOb0;->a:LRb0;

    check-cast p1, LAb0;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p1, v0}, LAb0;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
