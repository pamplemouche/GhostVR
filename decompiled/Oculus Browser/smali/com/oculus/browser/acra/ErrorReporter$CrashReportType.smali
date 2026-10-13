.class public final enum Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final synthetic $VALUES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

.field public static final enum ANR_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;


# instance fields
.field public final attachmentField:Lcom/oculus/browser/acra/ReportField;

.field public final defaultMaxSize:J

.field public final directory:Ljava/lang/String;

.field public final fileExtensions:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v8, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const-string v9, ".temp_stacktrace"

    const-string v10, ".stacktrace"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "ACRA_CRASH_REPORT"

    const/4 v2, 0x0

    const-string v3, "acra-reports"

    const-wide/32 v4, 0x100000

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/oculus/browser/acra/ReportField;[Ljava/lang/String;)V

    sput-object v8, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 2
    new-instance v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    sget-object v17, Lcom/oculus/browser/acra/ReportField;->MINIDUMP:Lcom/oculus/browser/acra/ReportField;

    const-string v1, ".dmp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v18

    const-string v12, "NATIVE_CRASH_REPORT"

    const/4 v13, 0x1

    const-string v14, "Crashpad"

    const-wide/32 v15, 0x800000

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/oculus/browser/acra/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 3
    new-instance v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    sget-object v7, Lcom/oculus/browser/acra/ReportField;->SIGQUIT:Lcom/oculus/browser/acra/ReportField;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v2, "ANR_REPORT"

    const/4 v3, 0x2

    const-string v4, "traces"

    const-wide/32 v5, 0x80000

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/oculus/browser/acra/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 4
    sget-object v2, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLcom/oculus/browser/acra/ReportField;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 3
    iput-wide p4, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    .line 4
    iput-object p6, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/oculus/browser/acra/ReportField;

    .line 5
    iput-object p7, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/oculus/browser/acra/ReportField;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;
    .locals 1

    .line 1
    const-class v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method
