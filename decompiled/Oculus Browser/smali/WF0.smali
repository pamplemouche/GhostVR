.class public LWF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LZF0;


# direct methods
.method public constructor <init>(LZF0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LWF0;->w:LZF0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LWF0;->w:LZF0;

    .line 2
    iget-object v0, v0, LZF0;->z:LVF0;

    .line 3
    invoke-virtual {v0}, LVF0;->a()LUF0;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, LUF0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, LVF0;->a(Z)LUF0;

    .line 6
    :goto_0
    invoke-virtual {v0}, LVF0;->a()LUF0;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LUF0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, LVF0;->a(Z)LUF0;

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, LWF0;->w:LZF0;

    .line 9
    invoke-virtual {v0}, LZF0;->a()V

    return-void
.end method
