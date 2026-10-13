.class public LiT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->f:LlT;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LhT;

    invoke-direct {v0, p0}, LhT;-><init>(LiT;)V

    .line 3
    sput-object v0, Lorg/chromium/base/ApplicationStatus;->f:LlT;

    .line 4
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method
