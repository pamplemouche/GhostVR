.class public LFh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFU0;


# direct methods
.method public constructor <init>(LGh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    sget-object v1, LEh0;->w:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method
