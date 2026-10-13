.class public Lcom/facebook/acra/StartTimeBlockedRecorder;
.super Ljava/lang/Object;
.source "StartTimeBlockedRecorder.java"


# static fields
.field private static sDurationStartupBlocked:J

.field private static sTotalCrashesUploaded:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationStartupBlocked()J
    .locals 2

    .prologue
    .line 11
    sget-wide v0, Lcom/facebook/acra/StartTimeBlockedRecorder;->sDurationStartupBlocked:J

    return-wide v0
.end method

.method public static getTotalCrashesUploaded()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/facebook/acra/StartTimeBlockedRecorder;->sTotalCrashesUploaded:I

    return v0
.end method

.method public static setDurationStartupBlocked(J)V
    .locals 0
    .param p0, "durationStartupBlocked"    # J

    .prologue
    .line 15
    sput-wide p0, Lcom/facebook/acra/StartTimeBlockedRecorder;->sDurationStartupBlocked:J

    .line 16
    return-void
.end method

.method public static setTotalCrashesUploaded(I)V
    .locals 0
    .param p0, "totalCrashesUploaded"    # I

    .prologue
    .line 23
    sput p0, Lcom/facebook/acra/StartTimeBlockedRecorder;->sTotalCrashesUploaded:I

    .line 24
    return-void
.end method
