.class public Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;
.super Ljava/lang/Object;
.source "FbReactLocalesProvider.java"


# static fields
.field private static sLocales:Lcom/facebook/common/locale/ILocales;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->sLocales:Lcom/facebook/common/locale/ILocales;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/common/locale/ILocales;
    .locals 4

    .prologue
    .line 21
    const-class v1, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->sLocales:Lcom/facebook/common/locale/ILocales;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/common/locale/BasicLocales;

    new-instance v2, Lcom/facebook/common/locale/DefaultSupportedLanguages;

    invoke-direct {v2}, Lcom/facebook/common/locale/DefaultSupportedLanguages;-><init>()V

    new-instance v3, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider$1;

    invoke-direct {v3}, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider$1;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/common/locale/BasicLocales;-><init>(Lcom/facebook/common/locale/SupportedLanguages;Ljavax/inject/Provider;)V

    sput-object v0, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->sLocales:Lcom/facebook/common/locale/ILocales;

    .line 33
    :cond_0
    sget-object v0, Lcom/facebook/fbreact/i18n/FbReactLocalesProvider;->sLocales:Lcom/facebook/common/locale/ILocales;

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
