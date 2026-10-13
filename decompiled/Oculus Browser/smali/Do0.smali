.class public LDo0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LCW;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LFW;->i:LFW;

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->a(LFW;)LuW;

    move-result-object v0

    iput-object v0, p0, LDo0;->a:LCW;

    return-void
.end method
