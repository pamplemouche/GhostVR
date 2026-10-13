.class Lcom/oculus/installer/DownloadAndInstallApi$3;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->fetchDownloadUrlAsync(Lcom/oculus/library/model/App;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v3, 0x0

    .line 141
    const/4 v2, 0x0

    sget v4, Lcom/oculus/common/packagescache/PackagesCacheModule$UL_id;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXBINDING_ID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v5}, Lcom/oculus/installer/DownloadAndInstallApi;->access$400(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/facebook/inject/InjectionContext;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/common/packagescache/PackagesCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v4, v4, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oculus/common/packagescache/PackagesCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    const/4 v2, 0x0

    sget v3, Lcom/oculus/common/packagescache/PackagesCacheModule$UL_id;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXBINDING_ID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v4}, Lcom/oculus/installer/DownloadAndInstallApi;->access$400(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/facebook/inject/InjectionContext;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/common/packagescache/PackagesCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/common/packagescache/PackagesCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    .line 147
    :goto_0
    new-instance v4, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v5, v5, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;-><init>(Ljava/lang/String;J)V

    .line 148
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 153
    invoke-static {v6}, Lcom/oculus/installer/DownloadAndInstallApi;->access$500(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/common/InstallerFileUtils;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v7, v7, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v3}, Lcom/oculus/appmanager/installer/common/InstallerFileUtils;->getFinalObbPath(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    move/from16 v19, v2

    move-object v2, v4

    .line 162
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 163
    invoke-static {v3}, Lcom/oculus/installer/DownloadAndInstallApi;->access$600(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/library/net/LibraryMethods;

    move-result-object v3

    new-instance v4, Lcom/oculus/library/net/GenerateUpdateInfoRequest;

    invoke-direct {v4, v2}, Lcom/oculus/library/net/GenerateUpdateInfoRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/oculus/library/net/LibraryMethods;->generateUpdateInfo(Lcom/oculus/library/net/GenerateUpdateInfoRequest;)Lcom/oculus/library/net/GenerateUpdateInfoResponse;
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 174
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    if-eqz v2, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 178
    :cond_0
    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v4, v4, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v5, v5, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 183
    invoke-static {v6}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v6

    .line 178
    invoke-static/range {v2 .. v7}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v2

    throw v2

    .line 143
    :cond_1
    const-wide/32 v2, -0x80000000

    goto :goto_0

    .line 156
    :cond_2
    new-instance v2, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v4, v4, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v19, v3

    goto :goto_1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v4, v4, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v5, v5, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 171
    invoke-static {v6}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v6

    .line 166
    invoke-static/range {v2 .. v7}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v2

    throw v2

    .line 186
    :cond_3
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getVersionCode()J

    move-result-wide v4

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 188
    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$700(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v2

    sget-wide v6, Lcom/oculus/installer/MC$oculus_library;->patch_updates_enabled:J

    invoke-interface {v2, v6, v7}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v3

    .line 189
    if-eqz v3, :cond_4

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    .line 190
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasPatchApkUpdate()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 191
    :goto_2
    if-eqz v3, :cond_5

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    .line 192
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasPatchObbUpdate()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 193
    :goto_3
    if-eqz v3, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 194
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasAssetPatches()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    .line 197
    :goto_4
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 198
    if-eqz v3, :cond_7

    .line 200
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getAssets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    .line 201
    iget-object v7, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 190
    :cond_4
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_2

    .line 192
    :cond_5
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_3

    .line 194
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_4

    .line 208
    :cond_7
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 209
    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    .line 211
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getAssetPatches()Ljava/util/List;

    move-result-object v2

    .line 213
    :goto_6
    if-eqz v3, :cond_b

    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 217
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_8
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$500(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/common/InstallerFileUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->file_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/oculus/appmanager/installer/common/InstallerFileUtils;->isAssetInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    new-instance v16, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    invoke-direct/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;-><init>()V

    .line 221
    iget-object v2, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->file_name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putAssetRequiredFilename(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 225
    iget-object v2, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    .line 226
    if-eqz v2, :cond_9

    .line 227
    iget-object v3, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->uri:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackDownloadUri(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 228
    iget-wide v8, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->size:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 229
    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->checksumHash:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackChecksum(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 232
    :cond_9
    iget-object v0, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v2, Lcom/oculus/appmanager/model/UpdateConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    iget-object v8, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 240
    invoke-static {v9}, Lcom/oculus/installer/DownloadAndInstallApi;->access$000(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v10, v10, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->getObbDisplayTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->checksumHash:Ljava/lang/String;

    iget-wide v11, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->size:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->getData()Ljava/util/Map;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 211
    :cond_a
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    .line 212
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getAssets()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    .line 213
    :cond_b
    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    goto/16 :goto_7

    .line 253
    :cond_c
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 254
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getRequiredAssets()Ljava/util/List;

    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_d
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    .line 256
    iget-object v2, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/appmanager/model/UpdateConfig;

    .line 257
    if-eqz v2, :cond_e

    .line 260
    iget-object v2, v2, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    const-string v3, "is_required_asset"

    const/4 v6, 0x1

    .line 261
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 265
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$500(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/common/InstallerFileUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->file_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/oculus/appmanager/installer/common/InstallerFileUtils;->isAssetInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 266
    new-instance v16, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    invoke-direct/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;-><init>()V

    .line 268
    iget-object v2, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->file_name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putAssetRequiredFilename(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 269
    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 270
    iget-object v0, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v2, Lcom/oculus/appmanager/model/UpdateConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    iget-object v8, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 278
    invoke-static {v9}, Lcom/oculus/installer/DownloadAndInstallApi;->access$000(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v10, v10, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->getObbDisplayTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->checksumHash:Ljava/lang/String;

    iget-wide v11, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->size:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    .line 284
    invoke-virtual/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->getData()Ljava/util/Map;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 295
    :cond_f
    if-eqz v18, :cond_13

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 297
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkPatchDownloadUri()Ljava/lang/String;

    move-result-object v8

    .line 299
    :goto_a
    if-eqz v18, :cond_14

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 301
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkPatchSize()J

    move-result-wide v11

    .line 303
    :goto_b
    if-eqz v18, :cond_15

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 305
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkPatchChecksum()Ljava/lang/String;

    move-result-object v10

    .line 307
    :goto_c
    if-eqz v18, :cond_16

    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 314
    :goto_d
    new-instance v16, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    invoke-direct/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;-><init>()V

    .line 316
    if-eqz v18, :cond_10

    .line 317
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 318
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkDownloadUri()Ljava/lang/String;

    move-result-object v2

    .line 317
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackDownloadUri(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 319
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 320
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkSize()J

    move-result-wide v2

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 321
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 322
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkChecksum()Ljava/lang/String;

    move-result-object v2

    .line 321
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackChecksum(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 325
    :cond_10
    new-instance v2, Lcom/oculus/appmanager/model/UpdateConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v6, v6, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v9, v9, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v13, v13, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 335
    invoke-virtual {v13}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkSignature()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v14, v14, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    .line 336
    invoke-virtual {v14}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getExternalSignatures()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v15, v15, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/16 v18, 0x0

    aget-object v15, v15, v18

    .line 337
    invoke-virtual {v15}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkBinaryId()Ljava/lang/String;

    move-result-object v15

    .line 338
    invoke-virtual/range {v16 .. v16}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->getData()Ljava/util/Map;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 340
    const/4 v8, 0x0

    .line 341
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasObbUpdate()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 346
    if-eqz v17, :cond_17

    if-eqz v19, :cond_17

    .line 347
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbPatchDownloadUri()Ljava/lang/String;

    move-result-object v12

    .line 348
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbPatchSize()J

    move-result-wide v15

    .line 349
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbPatchChecksum()Ljava/lang/String;

    move-result-object v14

    .line 350
    sget-object v11, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 360
    :goto_e
    new-instance v3, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    invoke-direct {v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;-><init>()V

    .line 362
    if-eqz v17, :cond_11

    if-eqz v19, :cond_11

    .line 363
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v6, v6, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 364
    invoke-virtual {v6}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbDownloadUri()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {v3, v6}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackDownloadUri(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 365
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v6, v6, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 366
    invoke-virtual {v6}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbSize()J

    move-result-wide v6

    .line 365
    invoke-virtual {v3, v6, v7}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 367
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v6, v6, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 368
    invoke-virtual {v6}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbChecksum()Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v3, v6}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putPatchFailureFallbackChecksum(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 371
    :cond_11
    new-instance v6, Lcom/oculus/appmanager/model/UpdateConfig;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v7, v7, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v10, v8, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 378
    invoke-static {v8}, Lcom/oculus/installer/DownloadAndInstallApi;->access$000(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v9, v9, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->getObbDisplayTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v8, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .line 383
    invoke-virtual {v8}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbBinaryId()Ljava/lang/String;

    move-result-object v19

    .line 384
    invoke-virtual {v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->getData()Ljava/util/Map;

    move-result-object v20

    move-wide v8, v4

    invoke-direct/range {v6 .. v20}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v8, v6

    .line 387
    :cond_12
    new-instance v6, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

    new-instance v9, Ljava/util/ArrayList;

    .line 390
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v10, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/installer/DownloadAndInstallApi$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v11, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object v7, v2

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;-><init>(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6

    .line 297
    :cond_13
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 298
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkDownloadUri()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a

    .line 301
    :cond_14
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 302
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkSize()J

    move-result-wide v11

    goto/16 :goto_b

    .line 305
    :cond_15
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v2, v2, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 306
    invoke-virtual {v2}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getApkChecksum()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c

    .line 307
    :cond_16
    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    goto/16 :goto_d

    .line 352
    :cond_17
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbDownloadUri()Ljava/lang/String;

    move-result-object v12

    .line 353
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbSize()J

    move-result-wide v15

    .line 354
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->getObbChecksum()Ljava/lang/String;

    move-result-object v14

    .line 355
    sget-object v11, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    goto/16 :goto_e
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oculus/installer/DownloadAndInstallApi$3;->call()Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

    move-result-object v0

    return-object v0
.end method
