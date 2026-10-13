.class public final synthetic LG20;
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

    iput-wide p1, p0, LG20;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v0, p0, LG20;->w:J

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, LJ/N;->MaFtYid6(JZ)V

    return-void
.end method
