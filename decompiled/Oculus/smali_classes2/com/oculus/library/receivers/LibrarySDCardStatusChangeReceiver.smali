.class public Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LibrarySDCardStatusChangeReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final sAllowedBroadcastActions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 33
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->sAllowedBroadcastActions:Lcom/google/common/collect/ImmutableList;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)Lcom/oculus/common/packagescache/PackagesCache;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)Lcom/oculus/libraryapi/OVRLibrary;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 23
    invoke-static {p1, p0}, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->sAllowedBroadcastActions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v2, "LibrarySDCardStatusChangeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;-><init>(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/oculus/executors/OculusThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
