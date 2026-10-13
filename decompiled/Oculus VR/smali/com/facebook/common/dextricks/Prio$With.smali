.class final Lcom/facebook/common/dextricks/Prio$With;
.super Ljava/lang/Object;
.source "Prio.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/Prio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "With"
.end annotation


# instance fields
.field private final savedCpuPriority:I

.field private final savedIoPriority:I

.field final synthetic this$0:Lcom/facebook/common/dextricks/Prio;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/Prio;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, -0x80000000

    .line 43
    iput-object p1, p0, Lcom/facebook/common/dextricks/Prio$With;->this$0:Lcom/facebook/common/dextricks/Prio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 46
    iput v1, p0, Lcom/facebook/common/dextricks/Prio$With;->savedIoPriority:I

    .line 47
    iput v1, p0, Lcom/facebook/common/dextricks/Prio$With;->savedCpuPriority:I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 50
    iget v0, p1, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 53
    :goto_1
    iput v0, p0, Lcom/facebook/common/dextricks/Prio$With;->savedIoPriority:I

    .line 54
    iget v0, p1, Lcom/facebook/common/dextricks/Prio;->cpuPriority:I

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 57
    :goto_2
    iput v0, p0, Lcom/facebook/common/dextricks/Prio$With;->savedCpuPriority:I

    .line 60
    :try_start_0
    iget v0, p1, Lcom/facebook/common/dextricks/Prio;->cpuPriority:I

    if-eq v0, v1, :cond_2

    .line 61
    iget v0, p1, Lcom/facebook/common/dextricks/Prio;->cpuPriority:I

    invoke-static {v2, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 64
    :cond_2
    iget v0, p1, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    if-eq v0, v1, :cond_0

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/DalvikInternals;->ioprio_set(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/Prio$With;->close()V

    throw v0

    .line 53
    :cond_3
    invoke-static {v4, v3}, Lcom/facebook/common/dextricks/DalvikInternals;->ioprio_get(II)I

    move-result v0

    goto :goto_1

    .line 57
    :cond_4
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 78
    iget v0, p0, Lcom/facebook/common/dextricks/Prio$With;->savedIoPriority:I

    if-eq v0, v3, :cond_0

    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/common/dextricks/Prio$With;->savedIoPriority:I

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/DalvikInternals;->ioprio_set(III)V

    .line 82
    :cond_0
    iget v0, p0, Lcom/facebook/common/dextricks/Prio$With;->savedCpuPriority:I

    if-eq v0, v3, :cond_1

    .line 83
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 84
    iget v1, p0, Lcom/facebook/common/dextricks/Prio$With;->savedCpuPriority:I

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 86
    :cond_1
    return-void
.end method
