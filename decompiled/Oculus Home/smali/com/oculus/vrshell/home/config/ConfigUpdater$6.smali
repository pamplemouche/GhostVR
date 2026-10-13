.class Lcom/oculus/vrshell/home/config/ConfigUpdater$6;
.super Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;->createQPsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/config/ConfigUpdater;
    .param p2, "loggingKey"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    iput-object p3, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
    .locals 5
    .param p1, "configContext"    # Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;
    .param p2, "tcs"    # Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6;->val$context:Landroid/content/Context;

    iget-object v1, p1, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->mHttpClient:Lokhttp3/OkHttpClient;

    iget-object v2, p1, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->mAccessToken:Ljava/lang/String;

    sget-object v3, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->HOME:Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    new-instance v4, Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;

    invoke-direct {v4, p0, p2}, Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater$6;Lbolts/TaskCompletionSource;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForAllSurfaces(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    .line 344
    return-void
.end method
