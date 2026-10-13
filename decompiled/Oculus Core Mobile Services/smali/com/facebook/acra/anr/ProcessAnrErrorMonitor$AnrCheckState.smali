.class Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$AnrCheckState;
.super Ljava/lang/Object;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnrCheckState"
.end annotation


# instance fields
.field mAnrConfirmed:Z

.field mCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
