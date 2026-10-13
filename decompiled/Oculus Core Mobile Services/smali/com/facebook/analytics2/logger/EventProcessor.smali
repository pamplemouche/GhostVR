.class final Lcom/facebook/analytics2/logger/EventProcessor;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;,
        Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventBatchStoreManagerFactory:Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

.field private final mEventListener:Lcom/facebook/analytics2/logger/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

.field private mFileBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInProcessBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

.field private final mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/ProcessorPriority;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;Lcom/facebook/analytics2/logger/EventProcessorManager;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)V
    .locals 2
    .param p3    # Lcom/facebook/analytics2/logger/EventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/analytics2/logger/BeginWritingBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    .line 49
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p6, p2}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;-><init>(Lcom/facebook/analytics2/logger/EventProcessor;Landroid/os/Looper;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/ProcessorPriority;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    .line 50
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventListener:Lcom/facebook/analytics2/logger/EventListener;

    .line 51
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventBatchStoreManagerFactory:Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    .line 52
    iput-object p5, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 53
    iput-object p7, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    .line 54
    iput-object p8, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventListener:Lcom/facebook/analytics2/logger/EventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventProcessorManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mInProcessBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mInProcessBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mFileBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mFileBatchStoreManager:Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mEventBatchStoreManagerFactory:Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    return-object v0
.end method


# virtual methods
.method public bootstrapSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    .line 81
    return-void
.end method

.method public dispatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 69
    return-void
.end method

.method public dispatchToHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWriteAtHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 73
    return-void
.end method

.method public notifyUserLogout(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 2
    .param p1    # Lcom/facebook/analytics2/logger/PigeonIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/PigeonIdentity;->getPrivacySensitiveId()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendUserLogout(Ljava/lang/String;)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public schemaExistsForEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    .line 59
    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;->checkIfSchemaExistsForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 77
    return-void
.end method

.method public validateEventSchema(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/analytics2/logger/SchemaValidationParams;

    invoke-direct {v0, p2, p1}, Lcom/facebook/analytics2/logger/SchemaValidationParams;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor;->mWriterHandler:Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V

    .line 65
    return-void
.end method
