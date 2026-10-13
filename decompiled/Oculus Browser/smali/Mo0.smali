.class public LMo0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LDo0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LDo0;

    invoke-direct {v0}, LDo0;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, LMo0;->a:LDo0;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 1
    iget-object v0, p0, LMo0;->a:LDo0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, LnU;

    invoke-direct {v1}, LnU;-><init>()V

    .line 3
    iget-object v0, v0, LDo0;->a:LCW;

    new-instance v2, Lzo0;

    invoke-direct {v2, v1}, Lzo0;-><init>(LnU;)V

    invoke-interface {v0, v2}, LCW;->a(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, LKo0;

    invoke-direct {v0, p0, p1, p2}, LKo0;-><init>(LMo0;II)V

    invoke-virtual {v1, v0}, LnU;->b(Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
