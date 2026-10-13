.class final Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;
.super Ljava/lang/RuntimeException;
.source "SectionTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubSectionException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;->this$0:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;

    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 22
    invoke-static {p1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->access$000(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->access$100(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/4 p1, 0x4

    aput-object p4, v0, p1

    const-string p1, "%s current[%s, %s] reported[%s, %s]"

    .line 20
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
