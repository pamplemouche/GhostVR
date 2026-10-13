.class public Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;
.super Ljava/lang/Object;
.source "EventMigrationHelperImpl.java"

# interfaces
.implements Lcom/oculus/logging/utils/FunnelData;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/utils/EventMigrationHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunnelDataImpl"
.end annotation


# instance fields
.field private final mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPersistableBundle:Landroid/os/PersistableBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;


# direct methods
.method private constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iput-object p1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-static {p1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$300(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    .line 426
    iput-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    iput-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    .line 429
    invoke-static {}, Lcom/facebook/funnellogger/core/PayloadBundle;->acquire()Lcom/facebook/funnellogger/core/PayloadBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Lcom/oculus/logging/utils/EventMigrationHelperImpl$1;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;)Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;)Lcom/facebook/funnellogger/core/PayloadBundle;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    return-object v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;I)Lcom/oculus/logging/utils/FunnelData;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/funnellogger/core/PayloadBundle;->put(Ljava/lang/String;I)Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 452
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/FunnelData;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/funnellogger/core/PayloadBundle;->put(Ljava/lang/String;J)Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 463
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/FunnelData;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPersistableBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$FunnelDataImpl;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/funnellogger/core/PayloadBundle;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 441
    :cond_1
    return-object p0
.end method
