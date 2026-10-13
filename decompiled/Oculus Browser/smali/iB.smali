.class public abstract LiB;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LHB;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LiB;->w:LHB;

    return-void
.end method

.method public constructor <init>(LHB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiB;->w:LHB;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, LiB;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, LiB;->w:LHB;

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, LHB;->a:LKB;

    invoke-virtual {v1, v0}, LKB;->b(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
