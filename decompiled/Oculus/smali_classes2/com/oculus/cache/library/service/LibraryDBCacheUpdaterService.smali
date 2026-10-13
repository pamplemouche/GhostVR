.class public Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;
.super Landroid/app/IntentService;
.source "LibraryDBCacheUpdaterService.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;

    sput-object v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "LibraryDBCacheUpdaterService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private insertEntry(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 128
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v0, "content_values"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 130
    if-nez v2, :cond_0

    .line 131
    sget-object v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to insert: packageName null in insertEntry()."

    .line 131
    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to insert: ContentValues null in insertEntry()."

    .line 136
    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v1, 0x1

    sget v3, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/cache/library/LibraryDBCacheManager;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/cache/library/LibraryDBCacheManager;->insertEntry(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateEntry(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 144
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v0, "send_update_notification"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 150
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v5, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryDBCacheManager;

    invoke-virtual {v0, v1}, Lcom/oculus/cache/library/LibraryDBCacheManager;->getEntry(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v3

    .line 151
    if-nez v3, :cond_1

    .line 152
    sget-object v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    const-string v2, "Trying to update non existing cache entry for package: %s with action: %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 152
    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "update_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const-string v0, "content_values"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 162
    if-eqz v0, :cond_0

    .line 165
    sget v1, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v5, v1, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/cache/library/LibraryDBCacheManager;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lcom/oculus/cache/library/LibraryDBCacheManager;->updateEntry(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    const-string v2, "Unsupported action in updateCacheState for action %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->setIntentRedelivery(Z)V

    .line 31
    invoke-static {p0, p0}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;)V

    .line 59
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    const-string v1, "onHandleIntent(): %s"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "insert_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "update_entry"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "request_and_reset_entries"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const-string v1, "Unrecognized action for LibraryDBCacheUpdaterService: %s."

    .line 74
    invoke-static {v1, v0}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "request_and_reset_entries"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const-string v0, "result_receiver"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 86
    const/4 v1, 0x0

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryCacheRefresher$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-virtual {v1}, Lcom/oculus/cache/library/LibraryCacheRefresher;->refreshCache()Lbolts/Task;

    move-result-object v1

    .line 88
    if-eqz v0, :cond_0

    .line 89
    new-instance v2, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;-><init>(Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;Landroid/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0

    .line 105
    :cond_3
    const-string v1, "insert_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-direct {p0, p1}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->insertEntry(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "package_name"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 116
    :cond_5
    const-string v1, "LibraryDBCacheUpdaterService is missing package name on %s action."

    .line 117
    invoke-static {v1, v0}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->TAG:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    invoke-direct {p0, p1}, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->updateEntry(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
