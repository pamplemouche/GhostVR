.class public final synthetic Lyg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBg0;


# direct methods
.method public constructor <init>(LBg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyg0;->w:LBg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lyg0;->w:LBg0;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, LBg0;->a0:Z

    .line 2
    iget-boolean v2, v0, LBg0;->Z:Z

    if-nez v2, :cond_0

    const-string v2, "onFirstDrawComplete"

    .line 3
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, LBg0;->M:Lfh0;

    .line 5
    iput-boolean v1, v0, Lfh0;->g:Z

    .line 6
    invoke-virtual {v0}, Lfh0;->a()V

    :cond_0
    return-void
.end method
