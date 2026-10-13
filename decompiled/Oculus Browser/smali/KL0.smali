.class public final synthetic LKL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LPL0;


# direct methods
.method public constructor <init>(LPL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKL0;->w:LPL0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LKL0;->w:LPL0;

    .line 1
    iget v1, v0, LPL0;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, LPL0;->a:LY01;

    new-instance v2, LHL0;

    invoke-direct {v2, v0}, LHL0;-><init>(LPL0;)V

    invoke-interface {v1, v2}, LY01;->a(Lorg/chromium/base/Callback;)Z

    :goto_0
    return-void
.end method
