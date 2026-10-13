.class public final synthetic LXa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LGw;


# direct methods
.method public constructor <init>(LGw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXa0;->a:LGw;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LXa0;->a:LGw;

    check-cast p1, LJx;

    check-cast v0, LTa0;

    invoke-virtual {v0, p1}, LTa0;->a(LJx;)V

    return-void
.end method
