.class public Lhh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LCg0;


# direct methods
.method public constructor <init>(LCg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhh0;->w:LCg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v0

    iget-object v1, p0, Lhh0;->w:LCg0;

    invoke-virtual {v0, v1}, LUg0;->a(LCg0;)V

    .line 2
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v0

    iget-object v1, p0, Lhh0;->w:LCg0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, LUg0;->a(ZLCg0;)V

    return-void
.end method
