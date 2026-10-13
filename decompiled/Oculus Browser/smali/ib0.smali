.class public final synthetic Lib0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Llb0;

.field public final b:LJw;


# direct methods
.method public constructor <init>(Llb0;LJw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib0;->a:Llb0;

    iput-object p2, p0, Lib0;->b:LJw;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lib0;->a:Llb0;

    iget-object v1, p0, Lib0;->b:LJw;

    check-cast p1, LJx;

    .line 1
    iget-object v0, v0, Llb0;->a:LPw;

    check-cast v0, Lgb0;

    invoke-virtual {v0, v1, p1}, Lgb0;->a(LJw;LJx;)V

    return-void
.end method
