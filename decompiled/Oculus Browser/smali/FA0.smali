.class public final LFA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWz0;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LFA0;->a:Landroid/os/Handler;

    .line 3
    iput-wide p1, p0, LFA0;->b:J

    return-void
.end method
