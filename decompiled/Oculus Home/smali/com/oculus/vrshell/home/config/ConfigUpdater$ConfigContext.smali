.class Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigContext"
.end annotation


# instance fields
.field public final mAccessToken:Ljava/lang/String;

.field public final mHttpClient:Lokhttp3/OkHttpClient;

.field public final mId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->mAccessToken:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->mId:Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/oculus/device/APIInterceptor;

    invoke-direct {v1, p2}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 48
    return-void
.end method
