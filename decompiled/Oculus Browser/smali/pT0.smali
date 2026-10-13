.class public final synthetic LpT0;
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

    iput-wide p1, p0, LpT0;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v0, p0, LpT0;->w:J

    const-string v2, "PushMessaging.TimeToReadPersistedMessages"

    .line 1
    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    return-void
.end method
