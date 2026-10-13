.class public Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final time:J

.field public final trace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;->trace:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;->time:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;->trace:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%d] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
