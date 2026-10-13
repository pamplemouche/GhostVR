.class public final synthetic Lkb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LPw;


# direct methods
.method public constructor <init>(LPw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkb0;->a:LPw;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lkb0;->a:LPw;

    check-cast p1, LJx;

    check-cast v0, Lgb0;

    .line 1
    iget-object v0, v0, Lgb0;->a:LZa0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lxw;->c:Lxw;

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lfb0;

    invoke-direct {v1, p1}, Lfb0;-><init>(LJx;)V

    .line 4
    iget-wide v2, v0, LZa0;->a:J

    .line 5
    invoke-static {v2, v3, v0, v1}, LJ/N;->MUvOp297(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
