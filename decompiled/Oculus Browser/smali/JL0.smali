.class public final synthetic LJL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LPL0;


# direct methods
.method public constructor <init>(LPL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJL0;->w:LPL0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJL0;->w:LPL0;

    if-eqz v0, :cond_0

    .line 1
    sget-object v1, LFW;->j:LFW;

    new-instance v2, LOL0;

    iget-object v0, v0, LPL0;->e:Ljava/io/File;

    invoke-direct {v2, v0}, LOL0;-><init>(Ljava/io/File;)V

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
