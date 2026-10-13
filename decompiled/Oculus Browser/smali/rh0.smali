.class public Lrh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LBD0;->c:LBD0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LBD0;

    invoke-direct {v0}, LBD0;-><init>()V

    sput-object v0, LBD0;->c:LBD0;

    .line 4
    :cond_0
    sget-object v0, LBD0;->c:LBD0;

    .line 5
    invoke-virtual {v0}, LBD0;->a()V

    .line 6
    invoke-static {}, LbD0;->a()LbD0;

    return-void
.end method
