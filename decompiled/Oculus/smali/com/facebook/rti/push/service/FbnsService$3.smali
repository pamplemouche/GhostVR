.class Lcom/facebook/rti/push/service/FbnsService$3;
.super Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;
.source "FbnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/service/FbnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mStatesHelperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rti/push/client/FbnsAIDLOperation;",
            "Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 3

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$3;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    .line 153
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_MQTT_CONFIG:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_BASED_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_MQTT_CONFIG:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_APPS_STATISTICS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    new-instance v2, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;

    invoke-direct {v2}, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_APPS_STATISTICS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_ANALYTICS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_ANALYTICS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_ANALYTICS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_FLYTRAP_REPORT:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    new-instance v2, Lcom/facebook/rti/push/service/FlytrapReportFetcher;

    invoke-direct {v2}, Lcom/facebook/rti/push/service/FlytrapReportFetcher;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->GET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_PREF_IDS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_PREF_IDS:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    sget-object v2, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_PREF_IDS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private validateRequest(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;Z)Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;
    .locals 4

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->mOperationType:I

    if-gez v0, :cond_1

    .line 192
    :cond_0
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid FbnsAIDLRequest"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FbnsService received invalid FbnsAIDLRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iget v0, p1, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->mOperationType:I

    .line 196
    invoke-static {v0}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->fromOperationType(I)Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    move-result-object v1

    .line 197
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->NOT_EXIST:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    if-ne v1, v0, :cond_2

    .line 198
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FbnsAIDLOperation not found"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FbnsService operation not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->hasReturn()Z

    move-result v0

    if-eq v0, p2, :cond_3

    .line 201
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FbnsAIDLOperation incorrect return type"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FbnsService operation incorrect return type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$3;->mStatesHelperMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    .line 205
    if-nez v0, :cond_4

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FbnsService does not implement operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_4
    return-object v0
.end method


# virtual methods
.method public query(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/FbnsService$3;->validateRequest(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;Z)Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService$3;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;->doGet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    invoke-direct {v1, v0}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public update(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/FbnsService$3;->validateRequest(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;Z)Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService$3;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;->doSet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)V

    .line 187
    return-void
.end method
