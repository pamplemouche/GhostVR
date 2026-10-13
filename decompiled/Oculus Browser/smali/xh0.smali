.class public Lxh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lyh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lpt0;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lpt0;->g()Z

    move-result v1

    .line 3
    invoke-static {v0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v2

    .line 4
    invoke-static {v1, v2, v0}, LHk0;->a(ZZLjava/lang/String;)V

    return-void
.end method
