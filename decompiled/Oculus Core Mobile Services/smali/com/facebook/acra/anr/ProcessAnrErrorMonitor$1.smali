.class synthetic Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;
.super Ljava/lang/Object;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->values()[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$1;->$SwitchMap$com$facebook$acra$anr$ProcessAnrErrorMonitor$StateChangeReason:[I

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
