.class public LLZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# instance fields
.field public final a:J

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LLZ;->b:Landroid/content/Context;

    .line 3
    iput-wide p2, p0, LLZ;->a:J

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LJZ;

    invoke-direct {v1, p0, p1}, LJZ;-><init>(LLZ;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method
