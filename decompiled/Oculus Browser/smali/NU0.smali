.class public final synthetic LNU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LNU0;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, LNU0;->w:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v3, v0, v1}, LJ/N;->MvEP2Ylz(Ljava/lang/String;ZJ)V

    return-void
.end method
