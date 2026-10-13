.class public Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
.super Ljava/lang/Object;
.source "FunnelEvent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNNEL_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->DEFAULT_FUNNEL_TIMEOUT:J

    return-void
.end method
