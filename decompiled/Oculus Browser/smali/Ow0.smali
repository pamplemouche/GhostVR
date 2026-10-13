.class public LOw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LXw0;


# direct methods
.method public constructor <init>(LXw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOw0;->a:LXw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcx0;

    .line 2
    iget-object v0, p0, LOw0;->a:LXw0;

    invoke-virtual {v0, p1}, LXw0;->a(Lcx0;)V

    .line 3
    iget-object p1, p0, LOw0;->a:LXw0;

    .line 4
    invoke-virtual {p1}, LXw0;->f()V

    return-void
.end method
