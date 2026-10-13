.class Lcom/facebook/acra/ErrorReporter$CrashReportCounter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashReportCounter"
.end annotation


# instance fields
.field public count:I

.field public logTime:J

.field public versionCode:I


# direct methods
.method constructor <init>(JII)V
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-wide p1, p0, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->logTime:J

    .line 692
    iput p3, p0, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->versionCode:I

    .line 693
    iput p4, p0, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->count:I

    .line 694
    return-void
.end method
